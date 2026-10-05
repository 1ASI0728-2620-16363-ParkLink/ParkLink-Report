workspace "ParkLink Tactical Design" "Chapter V target components; independently deployed services, not current implementation evidence." {
    !impliedRelationships false
    model {
        maps = softwareSystem "Maps Provider" "Geocoding and route estimates through an anti-corruption layer."
        bank = softwareSystem "Payment Provider" "Tokenized authorization, capture, refund and signed webhooks."
        delivery = softwareSystem "Delivery Providers" "Push and email delivery."
        llm = softwareSystem "LLM Provider" "Untrusted structured intent suggestions; no business credentials."
        storage = softwareSystem "Object Storage" "Private parking photographs accessed through signed URLs."
        parklink = softwareSystem "ParkLink" "Parking discovery, supply, reservation and supporting capabilities." {
            gateway = container "API Gateway" "Authenticates and routes requests; no business rules." "NestJS / TypeScript"
            commands = container "Reservation Command Broker" "Durable versioned commands; no domain authority." "RabbitMQ quorum queues" "Broker"
            events = container "Event Bus" "At-least-once domain events, retries and dead-letter routing." "RabbitMQ" "Broker"
            identityDb = container "Identity Database" "Users and sessions; private to Identity Service." "PostgreSQL" "Database"
            supplyDb = container "Supply Database" "Parking spaces, windows and photo references; private to Supply." "PostgreSQL" "Database"
            discoveryDb = container "Discovery Index" "Rebuildable, versioned projections; not reservation authority." "Redis / Search Index" "Database"
            reservationDb = container "Reservation Database" "Reservations, space locks, local supply snapshots, inbox and outbox." "PostgreSQL" "Database"
            paymentDb = container "Payment Database" "Payments, refunds, deduplication and outbox." "PostgreSQL" "Database"
            notificationDb = container "Notification Database" "Preferences, notification jobs and attempts." "PostgreSQL" "Database"
            agentDb = container "Conversation Store" "Minimal conversation state and single-use confirmations." "PostgreSQL" "Database"
            auditDb = container "Audit Log Store" "Append-only minimized records with correlation identifiers." "PostgreSQL" "Database"
            identity = container "Identity Service" "Own deployment, credentials, schema migrations and scaling." "NestJS / TypeScript" {
                idApi = component "AuthController / UsersController" "Validate registration, login and profile DTOs; expose only public user data." "NestJS REST controllers" "Interface"
                idApp = component "Identity Use Cases" "Register users, authenticate, update profiles and revoke sessions." "TypeScript command/query handlers" "Application"
                idDomain = component "User / Session / UserRepository" "Protect email, role and session invariants; define persistence and credential ports." "TypeScript domain model and ports" "Domain"
                idRepo = component "PrismaUserRepository" "Map aggregates and persist only Identity-owned records." "Prisma / PostgreSQL adapter" "Infrastructure"
                idSecurity = component "BcryptPasswordHasher / JwtTokenIssuer" "Hash passwords and sign scoped expiring tokens without exposing secrets." "bcrypt / JWT adapters" "Infrastructure"
                idOutbox = component "Identity Outbox Relay" "Publish committed UserRegistered and ProfileUpdated events with retry." "PostgreSQL outbox / AMQP" "Infrastructure"
            }
            supply = container "Parking Supply Service" "Own deployment and offer data; no reservation state writes." "NestJS / TypeScript" {
                spApi = component "ParkingSpacesController" "Validate owner requests for publication, schedules, prices and photo uploads." "NestJS REST controller" "Interface"
                spApp = component "Supply Use Cases" "Coordinate geocoding, ownership and offer changes; persist versioned offers." "TypeScript command/query handlers" "Application"
                spDomain = component "ParkingSpace / Supply Ports" "Protect schedules and prices; publish valid offer revisions without cancelling reservations." "TypeScript aggregate, policies and ports" "Domain"
                spRepo = component "PrismaParkingSpaceRepository" "Persist spaces, availability windows and photo references in Supply only." "Prisma / PostgreSQL adapter" "Infrastructure"
                spExternal = component "GoogleMapsAdapter / S3PhotoStorage" "Translate map responses and issue restricted presigned photo uploads." "HTTPS / S3 adapters" "Infrastructure"
                spOutbox = component "Supply Outbox Relay" "Publish ParkingSpacePublished, ParkingSpaceUpdated and AvailabilityWindowChanged." "PostgreSQL outbox / AMQP" "Infrastructure"
            }
            discovery = container "Parking Discovery Service" "Independently scaled read service with rebuildable projections." "NestJS / TypeScript" {
                dsApi = component "ParkingSearchController" "Validate search filters and expose results with freshness information." "NestJS REST controller" "Interface"
                dsConsumer = component "Supply / Reservation Event Consumers" "Validate versioned messages and submit projection updates." "AMQP consumers" "Interface"
                dsApp = component "Search / Projection Handlers" "Query ranked candidates and apply idempotent per-aggregate revisions." "TypeScript query/event handlers" "Application"
                dsDomain = component "SearchCriteria / ParkingSearchResult" "Define location, distance and filter semantics; visible availability is advisory." "TypeScript value objects and read model ports" "Domain"
                dsRepo = component "RedisParkingSearchRepository" "Maintain atomic index updates and processed-event markers; rebuild from snapshots." "Redis / Search Index adapter" "Infrastructure"
                dsMaps = component "GoogleMapsAdapter" "Translate optional distance and geocoding requests with bounded timeouts." "HTTPS map adapter" "Infrastructure"
            }
            reservation = container "Reservation Service" "Exclusive authority over reservation state and overlapping intervals." "NestJS / TypeScript" {
                rsApi = component "Reservations Controller / Command Consumer" "Expose owner-filtered queries and consume authenticated durable commands." "NestJS REST / AMQP consumers" "Interface"
                rsApp = component "Reservation Handlers / Saga" "Coordinate hold, confirm, cancel and extend; compensate late payment results." "TypeScript command/event handlers" "Application"
                rsDomain = component "Reservation / AvailabilityPolicy / Ports" "Protect state transitions, price snapshots and non-overlapping intervals." "TypeScript aggregates, policies and ports" "Domain"
                rsRepo = component "Reservation Repository / Unit of Work" "Atomically persist aggregate, inbox and outbox with locks and exclusion constraints." "Prisma / PostgreSQL adapter" "Infrastructure"
                rsExpiry = component "Hold Expiry Scheduler" "Submit idempotent expiry commands; domain decides whether the hold expired." "NestJS scheduled worker" "Infrastructure"
                rsOutbox = component "Reservation Outbox Relay" "Publish committed confirmation requests, cancellations and lifecycle events." "PostgreSQL outbox / AMQP" "Infrastructure"
            }
            payment = container "Payment Service" "Own deployment and financial records; cannot update Reservation Database." "NestJS / TypeScript" {
                pyApi = component "PaymentsController / PaymentEventConsumer" "Expose authorized payment queries, accept saga requests and validate signed webhooks." "NestJS REST / AMQP consumers" "Interface"
                pyApp = component "Payment / Refund Handlers" "Claim idempotency keys, call provider, reconcile and publish financial outcomes." "TypeScript command/event handlers" "Application"
                pyDomain = component "Payment / Refund / PaymentGateway" "Protect immutable amount and currency, valid refunds and payment transitions." "TypeScript aggregates and ports" "Domain"
                pyRepo = component "PrismaPaymentRepository" "Persist payment, refund, webhook inbox and committed financial events." "Prisma / PostgreSQL adapter" "Infrastructure"
                pyProvider = component "PaymentProviderAdapter" "Use provider idempotency keys and translate external statuses without card storage." "HTTPS / webhook ACL" "Infrastructure"
                pyOutbox = component "Payment Outbox Relay" "Publish PaymentAuthorized, PaymentFailed and RefundProcessed with retry." "PostgreSQL outbox / AMQP" "Infrastructure"
            }
            notification = container "Notification Service" "Own deployment; delivery failures never roll back business transactions." "NestJS / TypeScript" {
                ntApi = component "NotificationsController / NotificationEventConsumer" "Expose user inbox and preferences; consume committed reservation and payment events." "NestJS REST / AMQP consumers" "Interface"
                ntApp = component "Notification Handlers" "Create deduplicated jobs, apply preferences and schedule bounded delivery attempts." "TypeScript command/event handlers" "Application"
                ntDomain = component "Notification / Preference / DeliveryPolicy" "Define allowed channels, read status and retry limits; no reservation decisions." "TypeScript aggregates and ports" "Domain"
                ntRepo = component "PrismaNotificationRepository" "Persist jobs, attempts, preferences and consumed-event identifiers." "Prisma / PostgreSQL adapter" "Infrastructure"
                ntProvider = component "Push / Email Adapters" "Send minimized messages using provider keys and idempotency when supported." "HTTPS provider adapters" "Infrastructure"
                ntOutbox = component "Notification Outbox Relay" "Publish NotificationSent or NotificationFailed independently of reservation state." "PostgreSQL outbox / AMQP" "Infrastructure"
            }
            agent = container "Conversational Reservation Agent" "Own deployment; interprets intent but never owns parking or financial state." "NestJS / TypeScript" {
                agApi = component "Chat Controller / Action Result Consumer" "Receive authenticated turns and committed action results; stream public summaries." "NestJS REST / WebSocket / AMQP" "Interface"
                agApp = component "Conversation Orchestrator" "Coordinate interpretation, search, human confirmation and action result tracking." "TypeScript application service" "Application"
                agDomain = component "Conversation / ConfirmationPolicy / ToolRegistry" "Allowlist tools; bind single-use approval to actor, action, resource, price and expiry." "TypeScript aggregates, policy and ports" "Domain"
                agRepo = component "Conversation Repository" "Atomically consume confirmations and store command outbox in the same transaction." "Prisma / PostgreSQL adapter" "Infrastructure"
                agLlm = component "IntentInterpreter" "Translate untrusted LLM output into schema-validated intent with timeout and fallback." "HTTPS LLM ACL" "Infrastructure"
                agTools = component "DiscoveryClient / IdentityClient" "Search permitted options and validate narrowly scoped delegated identity." "HTTPS/mTLS adapters" "Infrastructure"
                agRelay = component "Agent Command / Event Relay" "Deliver approved durable commands and minimized audit events from committed outbox." "PostgreSQL outbox / AMQP" "Infrastructure"
            }
            audit = container "Audit Service" "Own deployment and append-only evidence; not operational source of truth." "NestJS / TypeScript" {
                auApi = component "AuditEventsController / AuditEventConsumer" "Restrict trace queries and validate published audit envelopes." "NestJS REST / AMQP consumers" "Interface"
                auApp = component "Record / Query Audit Handlers" "Deduplicate source events, minimize metadata and return correlation timelines." "TypeScript command/query handlers" "Application"
                auDomain = component "AuditEvent / MetadataPolicy / AuditRepository" "Enforce immutable evidence and exclude secrets and hidden LLM reasoning." "TypeScript immutable record and ports" "Domain"
                auRepo = component "AppendOnlyAuditRepository" "Insert with least-privilege credentials; support restricted indexed reads." "Prisma / PostgreSQL adapter" "Infrastructure"
            }
            gateway -> idApi "Registration, login and profiles" "HTTPS/mTLS"
            idApi -> idApp "Dispatch validated DTOs" "In-process"
            idApp -> idDomain "Apply identity rules" "In-process"
            idApp -> idRepo "Use UserRepository port" "In-process"
            idApp -> idSecurity "Use hashing and token ports" "In-process"
            idRepo -> identityDb "Persist aggregates and outbox" "SQL/TLS"
            idOutbox -> identityDb "Read committed outbox" "SQL/TLS"
            idOutbox -> events "Publish identity events" "AMQP/TLS"
            gateway -> spApi "Owner offer management" "HTTPS/mTLS"
            spApi -> spApp "Dispatch offer commands" "In-process"
            spApp -> spDomain "Validate ownership and offer rules" "In-process"
            spApp -> spRepo "Use ParkingSpaceRepository port" "In-process"
            spApp -> spExternal "Use geocoding and photo ports" "In-process"
            spExternal -> maps "Geocode address" "HTTPS"
            spExternal -> storage "Sign restricted upload" "S3 API / HTTPS"
            spRepo -> supplyDb "Persist offer and outbox" "SQL/TLS"
            spOutbox -> supplyDb "Read committed outbox" "SQL/TLS"
            spOutbox -> events "Publish versioned offer revisions" "AMQP/TLS"
            gateway -> dsApi "Read search options" "HTTPS/mTLS"
            events -> dsConsumer "Supply and reservation changes" "AMQP/TLS"
            dsApi -> dsApp "Dispatch search query" "In-process"
            dsConsumer -> dsApp "Dispatch validated event" "In-process"
            dsApp -> dsDomain "Apply criteria and revision rules" "In-process"
            dsApp -> dsRepo "Use search/projection ports" "In-process"
            dsApp -> dsMaps "Use distance port" "In-process"
            dsMaps -> maps "Optional routing estimates" "HTTPS"
            dsRepo -> discoveryDb "Atomic projection and inbox update" "Redis/TLS"
            gateway -> rsApi "Query reservation / action status" "HTTPS/mTLS"
            commands -> rsApi "Hold, Confirm, Cancel, Extend" "AMQP/TLS"
            events -> rsApi "Payment outcomes and Supply revisions" "AMQP/TLS"
            rsApi -> rsApp "Dispatch validated commands/events" "In-process"
            rsApp -> rsDomain "Execute authoritative transitions" "In-process"
            rsApp -> rsRepo "Use repository and unit-of-work ports" "In-process"
            rsRepo -> reservationDb "Lock and commit own data only" "SQL/TLS"
            rsExpiry -> rsApp "Submit ExpireHoldCommand" "In-process"
            rsOutbox -> reservationDb "Read committed outbox" "SQL/TLS"
            rsOutbox -> events "Publish reservation saga events" "AMQP/TLS"
            gateway -> pyApi "Payment status and receipts" "HTTPS/mTLS"
            events -> pyApi "Confirmation and refund requests" "AMQP/TLS"
            bank -> pyApi "Signed asynchronous webhook" "HTTPS"
            pyApi -> pyApp "Dispatch financial operation" "In-process"
            pyApp -> pyDomain "Validate money and transitions" "In-process"
            pyApp -> pyRepo "Use PaymentRepository port" "In-process"
            pyApp -> pyProvider "Use PaymentGateway port" "In-process"
            pyProvider -> bank "Authorize, capture, reconcile, refund" "HTTPS"
            pyRepo -> paymentDb "Persist deduplication and outbox" "SQL/TLS"
            pyOutbox -> paymentDb "Read committed outbox" "SQL/TLS"
            pyOutbox -> events "Publish financial outcomes" "AMQP/TLS"
            gateway -> ntApi "Read inbox and update preferences" "HTTPS/mTLS"
            events -> ntApi "Committed notification triggers" "AMQP/TLS"
            ntApi -> ntApp "Dispatch notification use case" "In-process"
            ntApp -> ntDomain "Apply channel and retry policies" "In-process"
            ntApp -> ntRepo "Use notification persistence ports" "In-process"
            ntApp -> ntProvider "Use DeliveryGateway port" "In-process"
            ntProvider -> delivery "Deliver push/email" "HTTPS"
            ntRepo -> notificationDb "Persist jobs and attempts" "SQL/TLS"
            ntOutbox -> notificationDb "Read committed outbox" "SQL/TLS"
            ntOutbox -> events "Publish delivery status" "AMQP/TLS"
            gateway -> agApi "Authenticated conversational turns" "HTTPS/WebSocket"
            events -> agApi "Reservation action results" "AMQP/TLS"
            agApi -> agApp "Dispatch turn / result" "In-process"
            agApp -> agDomain "Validate allowlist and approval" "In-process"
            agApp -> agRepo "Use conversation and approval ports" "In-process"
            agApp -> agLlm "Request structured intent" "In-process"
            agApp -> agTools "Execute permitted read tools" "In-process"
            agLlm -> llm "Minimal context, no secrets" "HTTPS"
            agTools -> discovery "Search options without booking authority" "HTTPS/mTLS"
            agTools -> identity "Validate delegated actor and scope" "HTTPS/mTLS"
            agRepo -> agentDb "Consume token plus insert command atomically" "SQL/TLS"
            agRelay -> agentDb "Read committed command/event outbox" "SQL/TLS"
            agRelay -> commands "Approved idempotent reservation commands" "AMQP/TLS"
            agRelay -> events "Minimized agent audit events" "AMQP/TLS"
            gateway -> auApi "Authorized support queries" "HTTPS/mTLS"
            events -> auApi "Critical events with correlation IDs" "AMQP/TLS"
            auApi -> auApp "Dispatch append or query" "In-process"
            auApp -> auDomain "Minimize and validate immutable record" "In-process"
            auApp -> auRepo "Use append-only repository port" "In-process"
            auRepo -> auditDb "INSERT / restricted SELECT; no UPDATE or DELETE" "SQL/TLS"
        }
    }
    views {
        component identity "IdentityComponents" "User & Identity - target tactical design" {
            include *
            autolayout tb
        }
        component supply "SupplyComponents" "Parking Supply - target tactical design" {
            include *
            autolayout tb
        }
        component discovery "DiscoveryComponents" "Parking Discovery - target tactical design" {
            include *
            autolayout tb
        }
        component reservation "ReservationComponents" "Reservation Management - target tactical design" {
            include *
            autolayout tb
        }
        component payment "PaymentComponents" "Payment - target tactical design" {
            include *
            autolayout tb
        }
        component notification "NotificationComponents" "Notification - target tactical design" {
            include *
            autolayout tb
        }
        component agent "AgentComponents" "Conversational Reservation Agent - target tactical design" {
            include *
            autolayout tb
        }
        component audit "AuditComponents" "Audit - target tactical design" {
            include *
            autolayout tb
        }
        styles {
            element "Element" {
                color #ffffff
                stroke #334155
                fontSize 24
            }
            element "Software System" {
                background #64748b
            }
            element "Container" {
                background #475569
            }
            element "Component" {
                background #2563eb
            }
            element "Interface" {
                background #0369a1
            }
            element "Application" {
                background #7c3aed
            }
            element "Domain" {
                background #047857
            }
            element "Infrastructure" {
                background #b45309
            }
            element "Database" {
                shape Cylinder
                background #334155
            }
            element "Broker" {
                shape Pipe
                background #64748b
            }
            relationship "Relationship" {
                color #475569
                fontSize 22
                routing Orthogonal
            }
        }
    }
}
