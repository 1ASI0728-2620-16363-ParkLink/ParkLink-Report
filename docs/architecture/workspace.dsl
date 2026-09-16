workspace "ParkLink Microservices Architecture" "C4 model for ParkLink with a conversational reservation agent." {

    model {
        driver = person "Conductor" "Busca, compara y reserva estacionamientos desde la aplicación o el chat." {
            tags "Person"
        }

        owner = person "Propietario" "Publica espacios y administra disponibilidad, precios e ingresos." {
            tags "Person"
        }

        support = person "Operador de soporte" "Supervisa operaciones, auditoría e incidentes." {
            tags "Person"
        }

        maps = softwareSystem "Proveedor de mapas" "Geocodificación, distancias y mapas." {
            tags "External"
        }

        paymentProvider = softwareSystem "Pasarela de pagos" "Autoriza cobros y reembolsos." {
            tags "External"
        }

        llmProvider = softwareSystem "Proveedor de modelo de lenguaje" "Interpreta lenguaje natural; no ejecuta operaciones de negocio." {
            tags "External"
        }

        notificationProvider = softwareSystem "Proveedores de notificación" "Entrega mensajes push y correo electrónico." {
            tags "External"
        }

        objectStorage = softwareSystem "Object Storage" "Almacena fotografías privadas de estacionamientos." {
            tags "External"
        }

        parklink = softwareSystem "ParkLink" "Plataforma de búsqueda, reserva y monetización de estacionamientos." {
            mobile = container "Aplicación móvil" "Experiencia para conductores y propietarios, incluido el chat." "Flutter" {
                tags "Application"
            }

            web = container "Panel web de monitoreo" "Permite a propietarios monitorear espacios, reservas e ingresos." "React / TypeScript" {
                tags "Application"
            }

            gateway = container "API Gateway" "Punto de entrada; valida JWT, limita tráfico y enruta solicitudes." "NestJS / TypeScript" {
                tags "Gateway"
            }

            agent = container "Agente conversacional de reservas" "Comprende la intención, consulta opciones y orquesta reservas con confirmación humana." "NestJS / TypeScript" {
                tags "Microservice,AI"

                chatController = component "Chat Controller" "Recibe mensajes y transmite respuestas del agente." "REST/WebSocket Controller"
                conversationOrchestrator = component "Conversation Orchestrator" "Mantiene el estado del diálogo y coordina cada turno." "Application Service"
                intentInterpreter = component "Intent Interpreter" "Convierte lenguaje natural en intención y parámetros estructurados." "LLM Adapter"
                toolRegistry = component "Tool Registry" "Expone únicamente herramientas permitidas de búsqueda y reserva." "Allowlisted Ports"
                confirmationPolicy = component "Confirmation Policy" "Exige confirmación explícita antes de reservar, pagar, cancelar o extender." "Domain Policy"
                agentAudit = component "Agent Audit Publisher" "Registra intención, herramientas, confirmación y resultado sin almacenar razonamiento interno." "Event Publisher"
            }

            identity = container "Identity Service" "Registro, autenticación, roles, perfiles y tokens delegados." "NestJS / TypeScript" {
                tags "Microservice"
            }

            discovery = container "Parking Discovery Service" "Búsqueda geoespacial, filtros, detalle y disponibilidad visible." "NestJS / TypeScript" {
                tags "Microservice"
            }

            supply = container "Parking Supply Service" "Publicación de espacios, horarios, precios y estado de la oferta." "NestJS / TypeScript" {
                tags "Microservice"
            }

            reservation = container "Reservation Service" "Autoridad del ciclo de vida de reservas y control de concurrencia." "NestJS / TypeScript" {
                tags "Microservice,CoreDomain"
            }

            payment = container "Payment Service" "Pagos, idempotencia, webhooks, reembolsos y comprobantes." "NestJS / TypeScript" {
                tags "Microservice"
            }

            notification = container "Notification Service" "Notificaciones asíncronas por push y correo." "NestJS / TypeScript" {
                tags "Microservice"
            }

            audit = container "Audit Service" "Trazabilidad inmutable de operaciones críticas y acciones del agente." "NestJS / TypeScript" {
                tags "Microservice"
            }

            reservationBroker = container "Reservation Command Broker" "Recibe comandos durables de reserva, aplica backpressure y los distribuye por espacio." "RabbitMQ / Quorum Queues" {
                tags "Queue"
            }

            eventBus = container "Event Bus" "Distribuye eventos de dominio y soporta procesos asíncronos." "RabbitMQ" {
                tags "Queue"
            }

            agentStore = container "Conversation Store" "Estado mínimo de conversación, TTL y referencias de confirmación." "PostgreSQL" {
                tags "Database"
            }

            identityDb = container "Identity Database" "Usuarios, credenciales, roles y perfiles." "PostgreSQL" {
                tags "Database"
            }

            discoveryIndex = container "Discovery Index" "Proyección geoespacial y disponibilidad visible." "Redis / Search Index" {
                tags "Database"
            }

            supplyDb = container "Supply Database" "Espacios, horarios y precios." "PostgreSQL" {
                tags "Database"
            }

            reservationDb = container "Reservation Database" "Reservas, retenciones e historial de estados." "PostgreSQL" {
                tags "Database"
            }

            paymentDb = container "Payment Database" "Transacciones, claves de idempotencia y webhooks procesados." "PostgreSQL" {
                tags "Database"
            }

            notificationDb = container "Notification Database" "Preferencias y estado de entregas." "PostgreSQL" {
                tags "Database"
            }

            auditDb = container "Audit Log Store" "Eventos append-only y correlation IDs." "PostgreSQL" {
                tags "Database"
            }
        }

        driver -> parklink "Busca y reserva mediante interfaz visual o conversación" "HTTPS"
        owner -> parklink "Publica y administra espacios" "HTTPS"
        support -> parklink "Consulta auditoría e incidentes" "HTTPS"
        parklink -> maps "Consulta mapas y geocodificación" "HTTPS"
        parklink -> paymentProvider "Procesa cobros y reembolsos" "HTTPS/Webhooks"
        parklink -> llmProvider "Solicita interpretación de lenguaje natural" "HTTPS"
        parklink -> notificationProvider "Envía notificaciones" "HTTPS"
        parklink -> objectStorage "Almacena fotografías" "S3 API"

        driver -> mobile "Usa la app y conversa con el agente" "HTTPS/WebSocket"
        owner -> mobile "Gestiona funciones principales" "HTTPS"
        owner -> web "Monitorea espacios, reservas e ingresos" "HTTPS"

        mobile -> gateway "Consume APIs y canal de chat" "HTTPS/WebSocket"
        web -> gateway "Consulta datos de monitoreo" "HTTPS"

        gateway -> agent "Enruta /chat con identidad delegada" "HTTPS"
        gateway -> identity "Enruta autenticación y perfiles" "HTTPS"
        gateway -> discovery "Enruta búsquedas y detalle" "HTTPS"
        gateway -> supply "Enruta gestión de espacios" "HTTPS"
        gateway -> reservation "Enruta consultas y estado de reserva" "HTTPS"
        gateway -> reservationBroker "Publica comandos visuales autenticados" "AMQP"
        gateway -> payment "Enruta consultas de pago" "HTTPS"

        agent -> llmProvider "Interpreta intención y redacta respuestas" "HTTPS"
        agent -> identity "Valida actor y permisos delegados" "HTTPS/mTLS"
        agent -> discovery "Ejecuta herramientas de búsqueda permitidas" "HTTPS/mTLS"
        agent -> reservationBroker "Publica Hold, Confirm, Cancel y Extend confirmados" "AMQP"
        agent -> agentStore "Guarda estado mínimo y confirmaciones" "SQL/TLS"
        agent -> eventBus "Publica AgentActionRequested y AgentActionCompleted" "AMQP"

        identity -> identityDb "Lee y escribe identidad propia" "SQL/TLS"
        discovery -> discoveryIndex "Consulta proyección de lectura" "Redis protocol/TLS"
        discovery -> maps "Obtiene distancias y geocodificación" "HTTPS"
        supply -> supplyDb "Lee y escribe oferta propia" "SQL/TLS"
        supply -> objectStorage "Genera referencias de fotografías" "S3 API"
        reservation -> reservationDb "Controla reservas y retenciones" "SQL/TLS"
        payment -> paymentDb "Registra pagos e idempotencia" "SQL/TLS"
        payment -> paymentProvider "Autoriza cobros y reembolsos" "HTTPS/Webhooks"
        notification -> notificationDb "Registra preferencias y entregas" "SQL/TLS"
        notification -> notificationProvider "Envía push y correo" "HTTPS"
        audit -> auditDb "Inserta eventos inmutables" "SQL/TLS"

        reservationBroker -> reservation "Entrega comandos durables particionados por spaceId" "AMQP"

        supply -> eventBus "Publica SpacePublished y PriceChanged" "AMQP"
        reservation -> eventBus "Publica ReservationHeld, ReservationConfirmationRequested, Confirmed, Cancelled y Expired" "AMQP"
        payment -> eventBus "Consume ReservationConfirmationRequested; publica PaymentAuthorized o Failed" "AMQP"
        discovery -> eventBus "Consume cambios de oferta y reserva" "AMQP"
        notification -> eventBus "Consume eventos notificables" "AMQP"
        audit -> eventBus "Consume eventos auditables" "AMQP"

        chatController -> conversationOrchestrator "Entrega mensaje autenticado"
        conversationOrchestrator -> intentInterpreter "Solicita intención estructurada"
        conversationOrchestrator -> toolRegistry "Ejecuta herramienta permitida"
        conversationOrchestrator -> confirmationPolicy "Valida confirmación antes del comando"
        conversationOrchestrator -> agentAudit "Publica resultado auditable"
        intentInterpreter -> llmProvider "Envía contexto mínimo y esquema de salida" "HTTPS"
        toolRegistry -> discovery "searchParking, getParkingDetails" "HTTPS/mTLS"
        toolRegistry -> reservationBroker "Publica HoldReservation y ConfirmReservation" "AMQP"
        confirmationPolicy -> agentStore "Lee token de confirmación y expiración" "SQL/TLS"
        agentAudit -> eventBus "Publica eventos del agente" "AMQP"

        production = deploymentEnvironment "Production" {
            mobileDevices = deploymentNode "Mobile Devices" "Dispositivos de conductores y propietarios." "iOS / Android" {
                tags "DeploymentNode"
                containerInstance mobile
            }

            edgeNetwork = deploymentNode "Edge Network" "Entrega la aplicación web y protege la entrada pública." "CDN / WAF / API Gateway" {
                tags "DeploymentNode"
                containerInstance web
                containerInstance gateway
            }

            applicationPlatform = deploymentNode "Application Platform" "Ejecuta microservicios stateless con escalamiento horizontal." "Managed Kubernetes" {
                tags "DeploymentNode"
                containerInstance agent
                containerInstance identity
                containerInstance discovery
                containerInstance supply
                containerInstance reservation
                containerInstance payment
                containerInstance notification
                containerInstance audit
            }

            messagingCluster = deploymentNode "Messaging Cluster" "Separa comandos de reserva y eventos de dominio." "RabbitMQ Cluster" {
                tags "DeploymentNode"
                containerInstance reservationBroker
                containerInstance eventBus
            }

            dataPlatform = deploymentNode "Managed Data Platform" "Aísla los almacenes lógicos de cada servicio." "PostgreSQL / Redis" {
                tags "DeploymentNode"
                containerInstance agentStore
                containerInstance identityDb
                containerInstance discoveryIndex
                containerInstance supplyDb
                containerInstance reservationDb
                containerInstance paymentDb
                containerInstance notificationDb
                containerInstance auditDb
            }
        }

    }

    views {
        systemLandscape "ParkLinkSystemLandscape" "Ecosistema de ParkLink y sistemas externos relevantes." {
            include parklink
            include maps
            include paymentProvider
            include llmProvider
            include notificationProvider
            include objectStorage
            autolayout lr
        }

        systemContext parklink "ParkLinkSystemContext" "Contexto de ParkLink y sus dependencias externas." {
            include *
            autolayout lr
        }

        container parklink "ParkLinkMicroservices" "Microservicios, almacenes propios y comunicación de ParkLink." {
            include driver
            include owner
            include support
            include mobile
            include web
            include gateway
            include agent
            include identity
            include discovery
            include supply
            include reservation
            include payment
            include notification
            include audit
            include reservationBroker
            include eventBus
            include maps
            include paymentProvider
            include llmProvider
            include notificationProvider
            include objectStorage
            autolayout tb
        }

        component agent "ConversationalAgentComponents" "Componentes internos y límites del agente conversacional." {
            include *
            autolayout tb
        }

        deployment * production "ParkLinkProductionDeployment" "Despliegue de producción de ParkLink." {
            include *
            autolayout tb
        }

        styles {
            element "Person" {
                shape Person
                background #17324d
                color #ffffff
            }

            element "Software System" {
                background #1f5f8b
                color #ffffff
            }

            element "External" {
                background #6b7280
                color #ffffff
            }

            element "Application" {
                background #0f766e
                color #ffffff
            }

            element "Gateway" {
                background #7c3aed
                color #ffffff
            }

            element "Microservice" {
                background #2563eb
                color #ffffff
            }

            element "AI" {
                background #9333ea
                color #ffffff
            }

            element "CoreDomain" {
                background #dc2626
                color #ffffff
            }

            element "Database" {
                shape Cylinder
                background #334155
                color #ffffff
            }

            element "Queue" {
                shape Pipe
                background #b45309
                color #ffffff
            }

            element "DeploymentNode" {
                background #e2e8f0
                color #0f172a
            }

            relationship "Relationship" {
                color #475569
                routing Orthogonal
            }
        }
    }
}
