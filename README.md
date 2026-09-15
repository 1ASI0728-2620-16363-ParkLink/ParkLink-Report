# UNIVERSIDAD PERUANA DE CIENCIAS APLICADAS

![UPC Logo](https://upload.wikimedia.org/wikipedia/commons/f/fc/UPC_logo_transparente.png)

**Carrera:** Ingeniería de Software
**Ciclo:** 7

**Curso:** 1ASI0728 - Arquitecturas De Software Emergentes - Presencial

**Sección:** 2620-16363

**Profesor:** Marino Humberto Jara Palacios

## "Informe de Trabajo Final"

**Startup:** ParkTeam
**Producto:** ParkLink

-------------------------------

### Relación de integrantes:

| Nombre                                | Código       |
|---------------------------------------|--------------|
| Fabian Alejandro Oliva Lopez          | U202312013   |
| Pietro Osores Marchese                | U202310971   |
|                                       |              |
|                                       |              |
|                                       |              |

**Abril 2026**

## Registro de Versiones del Informe

| Version | Fecha      | Autor                                                        | Descripción de modificación |
|---------|------------|--------------------------------------------------------------|-----------------------------|
| 1ra     | 15/04/2026 | Fabian Alejandro Oliva Lopez, Pietro Osores Marchese         | Avance1: En esta primera entrega se avanzó con los capítulos 1, 2 y 3 de forma organizada para iniciar el proyecto ParkLink, estableciendo la idea, el estudio del contexto y las funcionalidades. |

## Student Outcome

| Criterio específico | Acciones realizadas por entregable e integrante | Conclusión general |
|---|---|---|
| **CO1:** Actualiza conceptos y conocimientos necesarios para su desarrollo profesional y, en especial, para su proyecto en soluciones de software. | - **TB1 – Fabian Alejandro Oliva López:** Definió el ADN de la startup, estableciendo visión, misión, valores y segmentos objetivo.<br><br>- **TB1 – Pietro Osores Marchese:** Elaboró el Lean UX Canvas, User Stories, Impact Map y Product Backlog. | Ambos integrantes aplicaron conocimientos de estrategia de producto, Lean UX y gestión de requerimientos para definir ParkLink y organizar su propuesta de valor. |
| **CO2:** Reconoce la necesidad del aprendizaje permanente para el desempeño profesional y el desarrollo de proyectos en soluciones de software. | - **TB1 – Fabian Alejandro Oliva López:** Reconoció la importancia de actualizar conocimientos en estrategia de producto y liderazgo de proyectos.<br><br>- **TB1 – Pietro Osores Marchese:** Entendió la importancia del aprendizaje continuo en gestión de requerimientos y priorización ágil. | Ambos integrantes reconocieron que el aprendizaje continuo permite mejorar la estrategia del producto, la definición de requisitos y la priorización del trabajo. |

## Contenido

- [Capítulo I: Introducción](#capítulo-i-introducción)
    - [1.1. Startup Profile](#11-startup-profile)
    - [1.1.1. Descripción de la Startup](#111-descripción-de-la-startup)
    - [1.1.2. Perfiles de integrantes del equipo](#112-perfiles-de-integrantes-del-equipo)
    - [1.2. Solution Profile](#12-solution-profile)
    - [1.2.1. Nombre del Producto](#121-nombre-del-producto)
    - [1.2.2. Antecedentes y problemática](#122-antecedentes-y-problemática)
    - [1.2.3. Lean UX Process](#123-lean-ux-process)
    - [1.2.3.1. Lean UX Problem Statements](#1221-lean-ux-problem-statements)
    - [1.2.3.2. Lean UX Assumptions](#1222-lean-ux-assumptions)
    - [1.2.3.3. Lean UX Hypothesis Statements](#1223-lean-ux-hypothesis-statements)
    - [1.2.3.4. Lean UX Canvas](#1224-lean-ux-canvas)
    - [1.3. Segmentos objetivo](#13-segmentos-objetivo)
- [Capítulo II: Requirements Elicitation & Analysis](#capítulo-ii-requirements-elicitation--analysis)
    - [2.1. Competidores](#21-competidores)
    - [2.2. Entrevistas](#22-entrevistas)
    - [2.3. Needfinding](#23-needfinding)
    - [2.3.1. User Personas](#231-user-personas)
    - [2.3.2. User Task Matrix](#232-user-task-matrix)
    - [2.3.3. Empathy Mapping](#233-empathy-mapping)
    - [2.3.4. As-is Scenario Mapping](#234-as-is-scenario-mapping)
 - [Capítulo III: Requirements Specification](#capítulo-iii-requirements-specification)
   - [3.1. To-Be Scenario Mapping](#31-to-be-scenario-mapping)
   - [3.2. User Stories](#32-user-stories)
   - [3.2.1. Technical Stories](#321-technical-stories)
   - [3.3. Impact Mapping](#33-impact-mapping)
   - [3.4. Product Backlog](#34-product-backlog)
- [Capítulo IV: Strategic-Level Software Design](#capítulo-iv-strategic-level-software-design)
    - [4.1. Strategic-Level Attribute-Driven Design](#41-strategic-level-attribute-driven-design)
        - [4.1.1. Design Purpose](#411-design-purpose)
        - [4.1.2. Attribute-Driven Design Inputs](#412-attribute-driven-design-inputs)
            - [4.1.2.1. Primary Functionality](#4121-primary-functionality)
            - [4.1.2.2. Quality Attribute Scenarios](#4122-quality-attribute-scenarios)
            - [4.1.2.3. Constraints](#4123-constraints)
        - [4.1.3. Architectural Drivers Backlog](#413-architectural-drivers-backlog)
        - [4.1.4. Architectural Design Decisions](#414-architectural-design-decisions)
        - [4.1.5. Quality Attribute Scenario Refinements](#415-quality-attribute-scenario-refinements)
    - [4.2. Strategic-Level Domain-Driven Design](#42-strategic-level-domain-driven-design)
        - [4.2.1. EventStorming](#421-eventstorming)
        - [4.2.2. Candidate Context Discovery](#422-candidate-context-discovery)
        - [4.2.3. Domain Message Flows Modeling](#423-domain-message-flows-modeling)
        - [4.2.4. Bounded Context Canvases](#424-bounded-context-canvases)
        - [4.2.5. Context Mapping](#425-context-mapping)
    - [4.3. Software Architecture](#43-software-architecture)
        - [4.3.1. Software Architecture System Landscape Diagram](#431-software-architecture-system-landscape-diagram)
        - [4.3.2. Software Architecture Context Level Diagram](#432-software-architecture-context-level-diagram)
        - [4.3.3. Software Architecture Container Level Diagram](#433-software-architecture-container-level-diagram)
        - [4.3.4. Software Architecture Deployment Diagram](#434-software-architecture-deployment-diagram)
    - [4.4. Architecture-as-Code and Evidence Traceability](#44-architecture-as-code-and-evidence-traceability)
- [Capítulo V: Product Implementation, Validation & Deployment](#capítulo-v-product-implementation-validation--deployment)
    - [5.1. Testing Suites & General Patterns](#51-testing-suites--general-patterns)
    - [5.1.1 Backend Application Core Testing Suite](#511-backend-application-core-testing-suite)
    - [5.1.2 Pattern Based Backend Aplication(s)](#512-pattern-based-backend-aplications)
    - [5.1.3 Pattern Based Custom Software Library](#513-pattern-based-custom-software-library)
    - [5.1.4 Framework Pattern Driven Refactoring Report](#514-framework-pattern-driven-refactoring-report)
    - [5.2 Software Configuration Management](#52-software-configuration-management)
    - [5.2.1 Software Development Environment Configuration](#521-software-development-environment-configuration)
    - [5.2.2 Source Code Management](#522-source-code-management)
    - [5.2.3 Source Code Style Guide & Conventions](#523-source-code-style-guide--conventions)
    - [5.2.4 Software Deployment Configuration](#524-software-deployment-configuration)
    - [5.3 Microservices Deployment](#53-microservices-deployment)
    - [5.3.1 Cloud Architecture Diagram](#531-cloud-architecture-diagram)
    - [5.3.2 Cloud Architecture Deployment](#532-cloud-architecture-deployment)
    - [5.4 Sprint Reviews](#54-sprint-reviews)
    - [5.4.1 Sprint 1](#541-sprint-1)
    - [5.4.1.1 Sprint Backlog 1](#5411-sprint-backlog-1)
    - [5.4.1.2 Development Evidence for Sprint Review](#5412-development-evidence-for-sprint-review)
    - [5.4.1.3 Testing Suite Evidence for Sprint Review](#5413-testing-suite-evidence-for-sprint-review)
    - [5.4.1.4 Execution Evidence for Sprint Review](#5414-execution-evidence-for-sprint-review)
    - [5.4.1.5 Microservices Documentation Evidence for Sprint Review](#5415-microservices-documentation-evidence-for-sprint-review)
    - [5.4.1.6 Software Deployment Evidence for Sprint Review](#5416-software-deployment-evidence-for-sprint-review)
    - [5.4.1.7 Team Collaboration Insights during Sprint](#5417-team-collaboration-insights-during-sprint)
    - [5.4.1.8 Kanban Board](#5418-kanban-board)
    - [5.4.2 Sprint 2](#542-sprint-2)
    - [5.4.2.1 Sprint Backlog 2](#5421-sprint-backlog-2)
    - [5.4.2.2 Development Evidence for Sprint Review](#5422-development-evidence-for-sprint-review)
    - [5.4.2.3 Testing Suite Evidence for Sprint Review](#5423-testing-suite-evidence-for-sprint-review)
    - [5.4.2.4 Execution Evidence for Sprint Review](#5424-execution-evidence-for-sprint-review)
    - [5.4.2.5 Microservices Documentation Evidence for Sprint Review](#5425-microservices-documentation-evidence-for-sprint-review)
    - [5.4.2.6 Software Deployment Evidence for Sprint Review](#5426-software-deployment-evidence-for-sprint-review)
    - [5.4.2.7 Team Collaboration Insights during Sprint](#5427-team-collaboration-insights-during-sprint)
    - [5.4.2.8 Kanban Board](#5428-kanban-board)
    - [5.4.3 Sprint 3](#543-sprint-3)
    - [5.4.3.1 Sprint Backlog 3](#5431-sprint-backlog-3)
    - [5.4.3.2 Development Evidence for Sprint Review](#5432-development-evidence-for-sprint-review)
    - [5.4.3.3 Testing Suite Evidence for Sprint Review](#5433-testing-suite-evidence-for-sprint-review)
    - [5.4.3.4 Execution Evidence for Sprint Review](#5434-execution-evidence-for-sprint-review)
    - [5.4.3.5 Microservices Documentation Evidence for Sprint Review](#5435-microservices-documentation-evidence-for-sprint-review)
    - [5.4.3.6 Software Deployment Evidence for Sprint Review](#5436-software-deployment-evidence-for-sprint-review)
    - [5.4.3.7 Team Collaboration Insights during Sprint](#5437-team-collaboration-insights-during-sprint)
    - [5.4.3.8 Kanban Board](#5438-kanban-board)


# Capítulo I: Introducción

## 1.1. Startup Profile

### 1.1.1. Descripción del Startup

En las ciudades modernas, uno de los principales problemas que enfrentan los conductores es la dificultad para encontrar estacionamiento disponible. Esta situación genera congestión vehicular, pérdida de tiempo, estrés y un impacto ambiental negativo debido al aumento de emisiones contaminantes producto de la circulación innecesaria de vehículos.

**Misión:**
Brindar una plataforma eficiente y confiable que permita a los conductores encontrar y reservar estacionamientos fácilmente, mientras se genera valor para los propietarios mediante la monetización de sus espacios.

**Visión:**
Ser la plataforma líder en reserva de estacionamientos en Latinoamérica, contribuyendo al desarrollo de ciudades más organizadas, sostenibles y tecnológicamente conectadas.

**Valores:**

- Innovación tecnológica
- Eficiencia operativa
- Confianza y seguridad
- Sostenibilidad urbana

#### 1.1.2. Perfiles de integrantes del equipo
| Nombre                          | Descripción                                                                                                                                                                                                                                                                                                                                 | Foto |
|---------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------|
| Fabian Alejandro Oliva Lopez     | Me considero una persona activa en los proyectos, impulsando al equipo a realizar buenos trabajos. Mi objetivo es brindar apoyo y dar lo mejor de mí para fomentar un ambiente colaborativo y de respeto.                                                                                                                                 | foto |
|  Integrante   | descripcion      |  |
| Pietro Osores Marchese           | Soy Pietro Osores Marchese, estudiante de Ingeniería de Sistemas con interés en el desarrollo de software y la innovación tecnológica. Mi perfil combina habilidades en programación frontend, diseño de interfaces y gestión de proyectos ágiles, con un enfoque en la creación de soluciones digitales funcionales y escalables. Me caracterizo por el trabajo en equipo, la adaptabilidad y la búsqueda constante de nuevas herramientas para optimizar procesos y experiencias de usuario. | foto |
| Integrante    | descripcion     | foto |
