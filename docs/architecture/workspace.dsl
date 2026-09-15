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

            web = container "Aplicación web" "Administración de espacios, reservas e ingresos." "Web SPA" {
                tags "Application"
            }

            gateway = container "API Gateway" "Punto de entrada; valida JWT, limita tráfico y enruta solicitudes." "API Gateway" {
                tags "Gateway"
            }

            agent = container "Agente conversacional de reservas" "Comprende la intención, consulta opciones y orquesta reservas con confirmación humana." "Spring Boot 3 / Java 21" {
                tags "Microservice,AI"

                chatController = component "Chat Controller" "Recibe mensajes y transmite respuestas del agente." "REST/WebSocket Controller"
                conversationOrchestrator = component "Conversation Orchestrator" "Mantiene el estado del diálogo y coordina cada turno." "Application Service"
                intentInterpreter = component "Intent Interpreter" "Convierte lenguaje natural en intención y parámetros estructurados." "LLM Adapter"
                toolRegistry = component "Tool Registry" "Expone únicamente herramientas permitidas de búsqueda y reserva." "Allowlisted Ports"
                confirmationPolicy = component "Confirmation Policy" "Exige confirmación explícita antes de reservar, pagar, cancelar o extender." "Domain Policy"
                agentAudit = component "Agent Audit Publisher" "Registra intención, herramientas, confirmación y resultado sin almacenar razonamiento interno." "Event Publisher"
            }

            identity = container "Identity Service" "Registro, autenticación, roles, perfiles y tokens delegados." "Spring Boot 3 / Java 21" {
                tags "Microservice"
            }

            discovery = container "Parking Discovery Service" "Búsqueda geoespacial, filtros, detalle y disponibilidad visible." "Spring Boot 3 / Java 21" {
                tags "Microservice"
            }

            supply = container "Parking Supply Service" "Publicación de espacios, horarios, precios y estado de la oferta." "Spring Boot 3 / Java 21" {
                tags "Microservice"
            }

            reservation = container "Reservation Service" "Autoridad del ciclo de vida de reservas y control de concurrencia." "Spring Boot 3 / Java 21" {
                tags "Microservice,CoreDomain"
            }

            payment = container "Payment Service" "Pagos, idempotencia, webhooks, reembolsos y comprobantes." "Spring Boot 3 / Java 21" {
                tags "Microservice"
            }

            notification = container "Notification Service" "Notificaciones asíncronas por push y correo." "Spring Boot 3 / Java 21" {
                tags "Microservice"
            }

            audit = container "Audit Service" "Trazabilidad inmutable de operaciones críticas y acciones del agente." "Spring Boot 3 / Java 21" {
                tags "Microservice"
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
        owner -> web "Administra oferta e ingresos" "HTTPS"
        support -> web "Consulta operaciones auditadas" "HTTPS"

        mobile -> gateway "Consume APIs y canal de chat" "HTTPS/WebSocket"
        web -> gateway "Consume APIs" "HTTPS"

        gateway -> agent "Enruta /chat con identidad delegada" "HTTPS"
        gateway -> identity "Enruta autenticación y perfiles" "HTTPS"
        gateway -> discovery "Enruta búsquedas y detalle" "HTTPS"
        gateway -> supply "Enruta gestión de espacios" "HTTPS"
        gateway -> reservation "Enruta comandos de reserva" "HTTPS"
        gateway -> payment "Enruta consultas de pago" "HTTPS"

        agent -> llmProvider "Interpreta intención y redacta respuestas" "HTTPS"
        agent -> identity "Valida actor y permisos delegados" "HTTPS/mTLS"
        agent -> discovery "Ejecuta herramientas de búsqueda permitidas" "HTTPS/mTLS"
        agent -> reservation "Solicita retención o reserva confirmada" "HTTPS/mTLS"
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
        toolRegistry -> reservation "holdReservation, confirmReservation" "HTTPS/mTLS"
        confirmationPolicy -> agentStore "Lee token de confirmación y expiración" "SQL/TLS"
        agentAudit -> eventBus "Publica eventos del agente" "AMQP"
    }

    views {
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

            relationship "Relationship" {
                color #475569
                routing Orthogonal
            }
        }
    }
}
