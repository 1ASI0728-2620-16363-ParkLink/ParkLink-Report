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
 - [Capítulo IV: Product Architecture Design](#capítulo-iv-product-architecture-design)
    - [4.1. Strategic-Level Domain-Driven Design](#41-strategic-level-domain-driven-design)
    - [4.1.1. Principles Statements](#411-principles-statements)
    - [4.1.2. Approaches Statements Architectural Styles & Patterns](#412-approaches-statements-architectural-styles--patterns)
    - [4.1.3. Software Architecture](#413-software-architecture)
    - [4.1.3.1. Software Architecture System Landscape Diagram](#4131-software-architecture-system-landscape-diagram)
    - [4.1.3.2. Software Architecture Context Level Diagrams](#4132-software-architecture-context-level-diagrams)
    - [4.1.3.3. Software Architecture Container Level Diagrams](#4133-software-architecture-container-level-diagrams)
    - [4.1.3.4. Software Architecture Component Level Diagrams](#4134-software-architecture-component-level-diagrams)
    - [4.1.3.5. Software Architecture Code Level Diagrams](#4135-software-architecture-code-level-diagrams)
    - [4.1.4. Approach driven ViewPoints Diagrams](#414-approach-driven-viewpoints-diagrams)
    - [4.1.5. Relational / Non-Relational Database Diagram](#415-relational--non-relational-database-diagram)
    - [4.1.6. Design Patterns](#416-design-patterns)
    - [4.1.7. Tactics](#417-tactics)
    - [4.2. Architectural Drivers](#42-architectural-drivers)
    - [4.1.8. Design Purpose](#418-design-purpose)
    - [4.1.9. Primary Functionality (Primary User Stories)](#419-primary-functionality-primary-user-stories)
    - [4.1.10. Quality Attribute Scenarios](#4110-quality-attribute-scenarios)
    - [4.1.11. Constraints](#4111-constraints)
    - [4.1.12. Architectural Concerns](#4112-architectural-concerns)
    - [4.3. ADD Iterations](#43-add-iterations)
    - [4.3.1. Iteration 1: Establish Overall System Structure](#431-iteration-1-establish-overall-system-structure)
    - [4.3.2. Iteration 2: Address Critical Quality Attributes](#432-iteration-2-address-critical-quality-attributes)
    - [4.3.3. Iteration 3: External Integrations & Cross-Cutting Concerns](#433-iteration-3-external-integrations--cross-cutting-concerns)
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
