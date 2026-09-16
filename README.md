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
| Amir Gabriel Castro Sanchez           | U202310680   |
| Daniel Elias Ruiz Huisa               | U202210764   |

**Abril 2026**

## Registro de Versiones del Informe

| Version | Fecha      | Autor                                                        | Descripción de modificación |
|---------|------------|--------------------------------------------------------------|-----------------------------|
| 1ra     | 15/04/2026 | Fabian Alejandro Oliva Lopez, Pietro Osores Marchese, Amir Gabriel Castro Sanchez, Daniel Elias Ruiz Huisa   | Avance1: En esta primera entrega se avanzó con los capítulos 1, 2 y 3 de forma organizada para iniciar el proyecto ParkLink, estableciendo la idea, el estudio del contexto y las funcionalidades. |

## Student Outcome

| Criterio específico | Acciones realizadas por entregable e integrante | Conclusión general |
|---|---|---|
| **CO1:** Actualiza conceptos y conocimientos necesarios para su desarrollo profesional y, en especial, para su proyecto en soluciones de software. | - **TB1 – Fabian Alejandro Oliva López:** Definió el ADN de la startup, estableciendo visión, misión, valores y segmentos objetivo.<br><br>- **TB1 – Pietro Osores Marchese:** Elaboró el Lean UX Canvas, User Stories, Impact Map y Product Backlog.<br><br>- **TB1 – Amir Gabriel Castro Sanchez:** Participó en el diseño, registro y análisis de entrevistas a usuarios, identificando necesidades y características relevantes para la solución. Además, colaboró en la definición del Design Purpose y de las funcionalidades principales para el diseño estratégico del software.<br><br>- **TB1 – Daniel Elias Ruiz Huisa:** Desarrolló parte del análisis de competidores y del proceso de Needfinding mediante User Personas y Empathy Mapping. Asimismo, participó en la identificación de escenarios de atributos de calidad y restricciones para el diseño de la solución. | Los integrantes aplicaron conocimientos de estrategia de producto, investigación de usuarios, Lean UX, gestión de requerimientos y diseño estratégico de software para definir ParkLink y orientar el desarrollo de la solución según las necesidades identificadas. |
| **CO2:** Reconoce la necesidad del aprendizaje permanente para el desempeño profesional y el desarrollo de proyectos en soluciones de software. | - **TB1 – Fabian Alejandro Oliva López:** Reconoció la importancia de actualizar conocimientos en estrategia de producto y liderazgo de proyectos.<br><br>- **TB1 – Pietro Osores Marchese:** Entendió la importancia del aprendizaje continuo en gestión de requerimientos y priorización ágil.<br><br>- **TB1 – Amir Gabriel Castro Sanchez:** Reconoció la necesidad de fortalecer continuamente sus conocimientos en técnicas de entrevistas, análisis de usuarios y diseño estratégico para obtener requerimientos más precisos.<br><br>- **TB1 – Daniel Elias Ruiz Huisa:** Comprendió la importancia de actualizar sus conocimientos en análisis competitivo, técnicas de Needfinding y atributos de calidad para plantear soluciones de software mejor fundamentadas. | El equipo reconoció que el aprendizaje permanente es necesario para mejorar la investigación de usuarios, la definición de requisitos, la estrategia del producto y las decisiones de diseño durante el desarrollo de una solución de software. |

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
| Fabian Alejandro Oliva Lopez     | Soy estudiante de Ingeniería de Software con un gran interés de desarrollo backend y frontend. Me considero una persona activa en los proyectos, impulsando al equipo a realizar buenos trabajos. Mi objetivo es brindar apoyo y dar lo mejor de mí para fomentar un ambiente colaborativo y de respeto.                                                                                                                                 | foto |
|  Amir Gabriel Castro Sanchez   | Soy estudiante de Ingeniería de Software con interés en el desarrollo backend y la creación de aplicaciones móviles. Tengo conocimientos en el diseño e implementación de servicios y APIs, integración con bases de datos y desarrollo de funcionalidades para aplicaciones móviles. Me caracterizo por ser una persona responsable, colaborativa y con disposición para aprender nuevas tecnologías que permitan desarrollar soluciones eficientes y escalables.      | foto |
| Pietro Osores Marchese           | Soy Pietro Osores Marchese, estudiante de Ingeniería de Sistemas con interés en el desarrollo de software y la innovación tecnológica. Mi perfil combina habilidades en programación frontend, diseño de interfaces y gestión de proyectos ágiles, con un enfoque en la creación de soluciones digitales funcionales y escalables. Me caracterizo por el trabajo en equipo, la adaptabilidad y la búsqueda constante de nuevas herramientas para optimizar procesos y experiencias de usuario. | <img src="assets/cap-1/Pietro.jpg" alt="Pietro Osores" width="180" /> |
| Daniel Elias Ruiz Huisa    | Soy un estudiante de Ingeniería de Software. Me intereso por el desarrollo web y la evolucion de tecnologias como los nuevos agentes AI. Tengo conocimientos en Frameworks orientados a node.js como Astro, Vue y Angular. Domino lenguajes como python, C++ y typescript. Soy una persona responsable que busca siempre generar un ambiente sano y agradable para todos.     | ![Daniel Ruiz](assets/cap-1/Daniel.jpeg ) |

## 1.2. Solution Profile

ParkLink es una plataforma digital orientada a la búsqueda, reserva y gestión de espacios de estacionamiento. La solución busca conectar a conductores que necesitan encontrar un lugar donde estacionar con propietarios que disponen de espacios libres que pueden ser publicados y gestionados mediante la plataforma.

El producto busca mejorar la experiencia de estacionamiento en zonas urbanas mediante herramientas como geolocalización, visualización de disponibilidad, consulta de precios y horarios, reservas anticipadas y gestión de espacios para propietarios.

### 1.2.1. Antecedentes y problemática

El crecimiento del parque automotor y la alta concentración de vehículos en las principales ciudades generan nuevos desafíos relacionados con la movilidad urbana y la disponibilidad de estacionamientos. En zonas comerciales, empresariales, educativas y residenciales con alta demanda, los conductores pueden invertir una cantidad considerable de tiempo buscando un espacio disponible.

Esta problemática adquiere especial relevancia en Lima Metropolitana. De acuerdo con la Superintendencia Nacional de los Registros Públicos (SUNARP), durante el año 2025 se realizaron 648 497 nuevas inmatriculaciones vehiculares a nivel nacional, cifra que representó un incremento de 25,26 % respecto al año 2024. Asimismo, en Lima el incremento registrado fue de 14,25 % durante el mismo periodo (SUNARP, 2026).

A esto se suma el problema de la congestión vehicular. Según el TomTom Traffic Index, durante 2025 Lima registró un nivel promedio de congestión de 69,3 %. Además, un conductor que se moviliza regularmente durante las horas punta puede acumular aproximadamente 195 horas perdidas al año debido a la congestión vehicular (TomTom, 2026).

Dentro de este contexto, la búsqueda manual de estacionamientos puede generar desplazamientos adicionales y aumentar la incertidumbre de los conductores respecto a dónde encontrar un espacio disponible. Paralelamente, existen propietarios que cuentan con cocheras o espacios que permanecen disponibles durante determinadas horas del día y que podrían ser aprovechados mediante una plataforma que conecte la oferta y la demanda.

Por ello, ParkLink plantea una alternativa digital que permita centralizar información sobre espacios disponibles y facilite tanto la búsqueda y reserva por parte de los conductores como la publicación y administración por parte de los propietarios.

Para analizar la problemática de manera integral se emplea la técnica de las **5W's + 2H's**.

#### What (¿Qué sucede?)

Los conductores que se movilizan en zonas urbanas de alta demanda no siempre cuentan con información centralizada y actualizada sobre estacionamientos disponibles cerca de su destino.

Esto puede ocasionar que recorran diferentes calles o establecimientos buscando manualmente un espacio, incrementando el tiempo requerido para completar su desplazamiento.

Al mismo tiempo, algunos propietarios poseen espacios de estacionamiento disponibles durante determinados periodos, pero no cuentan con una herramienta especializada que les permita publicarlos y conectarse fácilmente con personas interesadas en utilizarlos.

#### Why (¿Por qué es un problema?)

La ausencia de información accesible sobre estacionamientos disponibles puede producir diferentes consecuencias:

- **Mayor tiempo de búsqueda:** los conductores deben recorrer diferentes calles o establecimientos antes de encontrar un espacio.
- **Desplazamientos innecesarios:** la búsqueda de estacionamiento puede generar recorridos adicionales.
- **Mayor consumo de combustible:** circular durante más tiempo incrementa el consumo asociado al desplazamiento.
- **Estrés e incertidumbre:** desconocer si existirá un espacio disponible cerca del destino puede generar frustración en los conductores.
- **Impacto en la movilidad urbana:** los desplazamientos adicionales se producen dentro de ciudades que ya presentan altos niveles de congestión.
- **Espacios desaprovechados:** propietarios con cocheras disponibles pueden perder oportunidades de generar ingresos debido a la ausencia de mecanismos para ofrecerlas.
- **Impacto ambiental:** una mayor circulación vehicular implica también un incremento potencial de emisiones generadas durante los desplazamientos.

#### Who (¿A quiénes afecta?)

La problemática involucra principalmente a los siguientes grupos:

- **Conductores urbanos:** personas que utilizan vehículos particulares para desplazarse hacia zonas con alta demanda de estacionamiento.
- **Propietarios de estacionamientos:** personas o empresas que cuentan con espacios que pueden encontrarse disponibles durante determinadas horas.
- **Comercios y establecimientos:** negocios cuyos clientes requieren estacionamientos cercanos para acceder con mayor facilidad.
- **Usuarios de las vías urbanas:** debido a que la circulación adicional de vehículos ocurre dentro de un entorno que ya presenta congestión.
- **La ciudad y el medio ambiente:** debido al consumo de combustible y las emisiones asociadas a los desplazamientos vehiculares.

#### When (¿Cuándo ocurre?)

La dificultad para encontrar estacionamientos puede presentarse especialmente:

- Durante las horas punta de la mañana y de la tarde.
- En horarios de ingreso y salida de centros laborales y educativos.
- Durante horarios comerciales.
- En eventos que incrementan temporalmente la concentración vehicular.
- Durante fines de semana en zonas comerciales, recreativas o de entretenimiento.
- En periodos donde aumenta la cantidad de personas que se desplazan hacia una misma zona.

#### Where (¿Dónde ocurre?)

La problemática puede presentarse principalmente en:

- Zonas comerciales con alta afluencia de personas.
- Centros empresariales y financieros.
- Alrededores de universidades e instituciones educativas.
- Hospitales y centros médicos.
- Centros comerciales.
- Zonas residenciales con alta densidad vehicular.
- Calles y avenidas cercanas a establecimientos con alta concurrencia.

Para la primera etapa de validación de ParkLink se priorizarán zonas urbanas de Lima Metropolitana donde exista una alta demanda de estacionamientos.

#### How (¿Cómo sucede?)

La problemática se produce debido a diferentes factores:

- **Información dispersa:** los conductores deben consultar diferentes alternativas para identificar dónde estacionar.
- **Información limitada sobre disponibilidad:** no siempre es posible conocer previamente si un establecimiento cuenta con espacios.
- **Ausencia de un sistema centralizado:** la oferta de estacionamientos públicos, privados o particulares se encuentra fragmentada.
- **Procesos tradicionales:** algunos estacionamientos todavía dependen de consultas presenciales para conocer disponibilidad.
- **Desconexión entre conductores y propietarios:** una persona puede tener una cochera disponible mientras otra busca estacionamiento en la misma zona sin que exista un mecanismo que permita conectarlos.
- **Limitadas posibilidades de reserva anticipada:** en determinadas alternativas el conductor solo puede comprobar si existe disponibilidad cuando llega al lugar.

#### How Much (¿Cuánto cuesta o impacta?)

El impacto puede analizarse desde diferentes dimensiones.

- **Tiempo:** TomTom reportó que durante 2025 los conductores de Lima podían acumular aproximadamente 195 horas perdidas al año debido al tráfico durante horas punta.
- **Congestión:** Lima alcanzó un nivel promedio de congestión vehicular de 69,3 % durante 2025.
- **Crecimiento vehicular:** SUNARP registró 648 497 nuevas inmatriculaciones vehiculares durante 2025 en Perú, 25,26 % más que durante 2024.
- **Crecimiento en Lima:** durante el mismo periodo, las nuevas inmatriculaciones en Lima aumentaron 14,25 %.
- **Económico:** los desplazamientos adicionales generan consumo adicional de combustible para los conductores.
- **Productividad:** el tiempo empleado buscando estacionamiento reduce el tiempo disponible para actividades laborales, académicas o personales.
- **Propietarios:** los espacios disponibles que permanecen sin utilizar representan oportunidades potenciales de ingreso que no están siendo aprovechadas.
- **Ambiental:** una mayor circulación vehicular implica mayor consumo energético y generación de emisiones.

Estas cifras no significan que toda la congestión de Lima sea causada por la búsqueda de estacionamiento; sin embargo, muestran que ParkLink se plantea dentro de un contexto urbano caracterizado por un parque vehicular creciente y elevados niveles de congestión.

#### Objetivos del proyecto

##### Objetivo general

Diseñar y validar ParkLink como una plataforma digital que conecte a conductores que buscan estacionamiento con propietarios que poseen espacios disponibles, facilitando la búsqueda, reserva y gestión de estacionamientos en zonas urbanas.

##### Objetivos específicos

- Permitir que los conductores identifiquen estacionamientos disponibles cercanos a su ubicación o destino.
- Facilitar la consulta de información relevante como ubicación, disponibilidad, precio y horario.
- Permitir que los usuarios realicen reservas anticipadas de espacios de estacionamiento.
- Proporcionar a los propietarios herramientas para registrar, publicar y administrar sus espacios disponibles.
- Reducir la incertidumbre de los conductores durante el proceso de búsqueda de estacionamiento.
- Validar mediante usuarios potenciales la facilidad de uso y utilidad de las principales funcionalidades de ParkLink.
- Medir indicadores como el tiempo necesario para encontrar un estacionamiento, número de reservas y frecuencia de utilización de la plataforma.

#### Restricciones y límites del alcance

Durante la primera versión del producto, ParkLink tendrá las siguientes restricciones:

- La solución se centrará inicialmente en zonas urbanas de Lima Metropolitana.
- La disponibilidad mostrada dependerá de la información registrada o actualizada por los propietarios y administradores de los estacionamientos.
- La plataforma no pretende gestionar ni solucionar directamente el tráfico vehicular de la ciudad.
- ParkLink no administra estacionamientos municipales ni modifica la regulación existente sobre estacionamiento en espacios públicos.
- La primera versión estará enfocada principalmente en las funcionalidades de búsqueda, visualización, publicación, reserva y gestión de espacios.
- La solución no contempla inicialmente la instalación de sensores IoT para detectar automáticamente la ocupación de cada espacio.
- Los resultados relacionados con reducción del tiempo de búsqueda deberán validarse mediante pruebas con usuarios y métricas obtenidas durante la utilización de la solución.

### 1.2.2. Lean UX Process

Lean UX es un enfoque de diseño centrado en la experimentación, validación de hipótesis y aprendizaje continuo. Su objetivo es reducir la incertidumbre durante el desarrollo de un producto mediante ciclos rápidos de creación, evaluación y mejora.

En ParkLink, este enfoque permite evaluar si las funcionalidades propuestas realmente responden a las necesidades de conductores y propietarios antes de realizar implementaciones de mayor complejidad.

El proceso se desarrolla mediante las siguientes etapas:

#### Comprender

Durante esta etapa se analiza la problemática relacionada con la búsqueda de estacionamientos y el aprovechamiento de espacios disponibles.

Se consideran dos grupos principales: conductores que necesitan estacionarse en zonas de alta demanda y propietarios que cuentan con espacios que pueden ser ofrecidos temporalmente.

A partir del análisis inicial se identifican problemas como la falta de información sobre disponibilidad, el tiempo destinado a la búsqueda de estacionamiento, la dificultad para planificar previamente dónde estacionarse y la falta de mecanismos mediante los cuales los propietarios puedan ofrecer sus espacios.

#### Esbozar

A partir de las necesidades identificadas se plantean posibles funcionalidades para ParkLink, entre ellas:

- **Mapa interactivo:** permite visualizar estacionamientos cercanos según la ubicación o destino del conductor.
- **Sistema de reservas:** permite asegurar un espacio antes de llegar al destino.
- **Visualización de precios:** permite comparar alternativas antes de realizar una reserva.
- **Visualización de horarios:** informa en qué periodos se encuentra disponible cada espacio.
- **Registro de estacionamientos:** permite que los propietarios publiquen sus espacios.
- **Gestión de espacios:** permite modificar información, disponibilidad y características de las cocheras registradas.

Estas funcionalidades pueden representarse inicialmente mediante prototipos de baja fidelidad para evaluar su funcionamiento antes de desarrollar completamente el producto.

#### Probar

Durante esta etapa los prototipos son presentados a usuarios potenciales para evaluar la comprensión y facilidad de uso de la plataforma.

Las pruebas pueden considerar tareas representativas como:

- Buscar estacionamientos cercanos.
- Consultar información de un estacionamiento.
- Seleccionar un horario.
- Realizar una reserva.
- Registrar una cochera.
- Modificar la disponibilidad de un espacio.

Las observaciones obtenidas permiten identificar dificultades, funcionalidades poco claras y oportunidades de mejora.

#### Medir

Para determinar si ParkLink genera valor para los usuarios se establecen indicadores que permitan comparar los resultados obtenidos durante las pruebas y posteriores versiones del producto.

Entre las principales métricas se consideran:

- Tiempo promedio necesario para encontrar una alternativa de estacionamiento.
- Tiempo requerido para completar una reserva.
- Número de estacionamientos publicados.
- Número de reservas realizadas.
- Porcentaje de usuarios que completan correctamente el proceso de reserva.
- Frecuencia de utilización de la plataforma.
- Nivel de satisfacción de conductores y propietarios.

Los resultados obtenidos permiten generar nuevos aprendizajes y realizar ajustes antes de continuar con nuevas iteraciones del producto.

#### 1.2.2.1. Lean UX Problem Statements

Para formular los Problem Statements de ParkLink se consideran los siguientes elementos:

**Domain:**  
ParkLink pertenece al dominio de movilidad urbana y gestión digital de estacionamientos, específicamente a soluciones tecnológicas que conectan la oferta y demanda de espacios disponibles.

**Customer Segments:**

Los principales segmentos identificados son:

1. Conductores urbanos que necesitan encontrar estacionamiento en zonas de alta demanda.
2. Propietarios de cocheras o espacios de estacionamiento que desean aprovechar espacios temporalmente disponibles.

**Segmento inicial prioritario:**

Para la primera etapa de validación, ParkLink priorizará a conductores urbanos de Lima Metropolitana que se desplazan frecuentemente hacia zonas comerciales, empresariales o educativas y experimentan dificultades para encontrar estacionamiento.

Este segmento será priorizado porque constituye el usuario que inicia la demanda dentro de la plataforma. Posteriormente, el crecimiento de la oferta de propietarios permitirá ampliar progresivamente la cobertura de ParkLink.

**Pain Points:**

Los principales problemas identificados son:

- Tiempo empleado buscando estacionamiento.
- Falta de información sobre disponibilidad.
- Incertidumbre antes de llegar al destino.
- Dificultad para comparar precios y ubicaciones.
- Falta de herramientas para realizar reservas anticipadas.
- Espacios particulares que permanecen disponibles sin generar ingresos.
- Falta de canales especializados para conectar conductores y propietarios.

**Gap:**

Actualmente existe una brecha entre los conductores que necesitan estacionamientos y propietarios que poseen espacios disponibles.

La información se encuentra fragmentada y los usuarios no cuentan con una plataforma centralizada que integre ubicación, disponibilidad, horarios, precios, reservas y administración de espacios.

ParkLink busca reducir esta brecha mediante una plataforma que concentre estos procesos dentro de una misma experiencia digital.

**Vision / Strategy:**

La visión de ParkLink es facilitar el acceso a espacios de estacionamiento mediante una experiencia digital sencilla, permitiendo que los conductores puedan planificar dónde estacionarse antes de llegar a su destino.

La estrategia consiste en crear una plataforma que conecte progresivamente la demanda de los conductores con la oferta de estacionamientos y espacios particulares disponibles. En una primera etapa se priorizará la validación de las funciones de búsqueda, visualización y reserva; posteriormente se buscará ampliar la cantidad de propietarios y espacios disponibles.

##### Problem Statement 1 – Conductores

Los conductores que se desplazan hacia zonas urbanas de alta demanda necesitan una forma sencilla de identificar y reservar estacionamientos cercanos porque actualmente pueden invertir tiempo recorriendo diferentes lugares sin conocer previamente su disponibilidad.

Esta situación genera incertidumbre, desplazamientos adicionales y una experiencia de movilidad poco eficiente.

**¿Cómo podríamos diseñar una solución digital que permita a los conductores localizar, comparar y reservar espacios de estacionamiento antes de llegar a su destino?**

##### Problem Statement 2 – Propietarios

Los propietarios que cuentan con espacios de estacionamiento disponibles necesitan una manera sencilla de ofrecerlos a otros usuarios porque actualmente no poseen un canal especializado que les permita publicar su disponibilidad y administrar las posibles reservas.

Como consecuencia, algunos espacios permanecen desaprovechados y no generan ningún beneficio para sus propietarios.

**¿Cómo podríamos diseñar una plataforma que permita a los propietarios publicar, administrar y ofrecer sus espacios de estacionamiento de manera sencilla, segura y organizada?**

#### 1.2.2.2. Lean UX Assumptions

##### 1.2.2.2.1. Business Assumptions

Para el desarrollo inicial de ParkLink se plantean los siguientes supuestos:

- Existe una necesidad por parte de los conductores de reducir la incertidumbre asociada a la búsqueda de estacionamiento.
- Los usuarios valorarán la posibilidad de conocer previamente ubicación, precio y disponibilidad.
- Algunos conductores estarán dispuestos a utilizar una plataforma digital para reservar estacionamientos.
- Existen propietarios interesados en generar ingresos mediante espacios que permanecen disponibles durante determinadas horas.
- Una mayor cantidad de estacionamientos registrados incrementará el valor de la plataforma para los conductores.
- Una mayor cantidad de conductores incrementará el atractivo de la plataforma para los propietarios.

##### 1.2.2.2.2. Business Outcomes

Los principales resultados esperados para el negocio son:

- Incrementar progresivamente la cantidad de usuarios registrados.
- Aumentar la cantidad de propietarios y estacionamientos publicados.
- Generar reservas mediante la plataforma.
- Generar ingresos mediante comisiones asociadas a las reservas.
- Conseguir que los usuarios vuelvan a utilizar ParkLink después de su primera experiencia.
- Posicionar ParkLink como una alternativa digital para la búsqueda y reserva de estacionamientos.

##### 1.2.2.2.3. User Assumptions

Respecto a los conductores, se plantea que:

- Actualmente muchos identifican estacionamientos mediante búsqueda presencial o conocimiento previo de la zona.
- Valoran soluciones rápidas y fáciles de utilizar.
- Desean conocer el precio antes de seleccionar un estacionamiento.
- Consideran importante conocer la ubicación exacta del espacio.
- La posibilidad de reservar previamente puede reducir la incertidumbre de su desplazamiento.

Respecto a los propietarios, se plantea que:

- Algunos cuentan con espacios libres durante determinadas horas.
- Están interesados en obtener un beneficio económico de espacios que actualmente no utilizan.
- Prefieren herramientas sencillas para registrar y administrar sus estacionamientos.
- Necesitan controlar los horarios durante los cuales sus espacios pueden ser reservados.

Estos supuestos deberán ser comprobados progresivamente mediante entrevistas, pruebas de usabilidad y datos obtenidos durante las iteraciones de ParkLink.

##### 1.2.2.2.4. User Outcomes

Para los conductores se esperan los siguientes resultados:

- Reducir el tiempo dedicado a identificar alternativas de estacionamiento.
- Conocer previamente la ubicación, disponibilidad y precio.
- Poder planificar dónde estacionarse antes de llegar al destino.
- Reducir la incertidumbre asociada a la búsqueda de un espacio.
- Realizar reservas mediante un proceso sencillo.

Para los propietarios se esperan los siguientes resultados:

- Publicar fácilmente sus espacios disponibles.
- Definir horarios y disponibilidad.
- Administrar las reservas recibidas.
- Incrementar el aprovechamiento de espacios que permanecían sin utilizar.
- Obtener una nueva alternativa para generar ingresos.

### 1.2.3.3 Lean UX Hypothesis Statements

#### Hypothesis Statement 1

Creemos que lograremos reducir el tiempo de búsqueda de estacionamiento y mejorar la experiencia de movilidad urbana.

Sabremos que si los conductores
pueden visualizar y reservar estacionamientos disponibles en tiempo real,
cuando implementemos una plataforma digital que centralice la información de espacios y permita reservas anticipadas.

---

#### Hypothesis Statement 2

Creemos que lograremos un aumento en la generación de ingresos para los propietarios de estacionamientos.

Sabremos que si los propietarios
pueden publicar y gestionar fácilmente sus espacios dentro de la plataforma,
cuando veamos que utilizan activamente la aplicación para ofrecer sus cocheras y recibir reservas.

#### Hypothesis Statement 3

Creemos que lograremos una mejora en la toma de decisiones de los usuarios al momento de estacionar.

Sabremos que si los conductores
tienen acceso a información clara sobre precios, ubicación y disponibilidad,
cuando implementemos una interfaz que muestre datos en tiempo real de forma sencilla y confiable.

### 1.2.3.4	Lean UX Canvas

<img width="833" height="590" alt="image" src="https://github.com/user-attachments/assets/e96d2f47-9ed4-4dc8-b8cb-faf8d08ec793" />

### 1.3. Segmentos objetivo

ParkLink está orientado principalmente a dos segmentos: conductores urbanos que requieren encontrar estacionamiento y propietarios o administradores que cuentan con espacios que pueden ser ofrecidos a otros usuarios. Ambos segmentos se concentran inicialmente en Lima Metropolitana.

#### Segmento 1: Conductores urbanos

**Características demográficas:**
- Personas principalmente entre 20 y 60 años.
- Hombres y mujeres que conduzcan un vehículo particular.
- Residentes de Lima Metropolitana o personas que se desplacen regularmente dentro de ella.
- Estudiantes universitarios, trabajadores dependientes, trabajadores independientes, empresarios y otros usuarios que utilicen vehículos para sus actividades cotidianas.
- Usuarios familiarizados con teléfonos inteligentes y aplicaciones móviles.

**Características de comportamiento:**
- Se movilizan regularmente hacia zonas comerciales, empresariales, educativas o recreativas.
- Utilizan el vehículo particular de manera frecuente.
- Buscan alternativas que les permitan ahorrar tiempo durante sus desplazamientos.
- Utilizan aplicaciones móviles para actividades relacionadas con movilidad, ubicación, pagos o servicios.

**Necesidades:**
- Encontrar espacios de estacionamiento disponibles de manera rápida.
- Reducir el tiempo empleado buscando estacionamiento.
- Conocer previamente la ubicación, precio y disponibilidad.
- Reservar un espacio antes de llegar al destino.
- Contar con métodos de pago seguros.
- Reducir la incertidumbre relacionada con la búsqueda de estacionamiento.

**Relevancia del segmento:**

La presencia de vehículos particulares en Lima Metropolitana demuestra la existencia de un mercado potencial para soluciones relacionadas con estacionamiento. Según la Encuesta Demográfica y de Salud Familiar del INEI, en 2024 el 16,6 % de los hogares de Lima Metropolitana contaba con carro o camión.

Asimismo, existe una alta utilización de teléfonos celulares dentro del rango de edad seleccionado. Durante el primer trimestre de 2025, el 97,4 % de las personas de 19 a 24 años utilizaba teléfono celular; este porcentaje también alcanzó el 97,4 % entre las personas de 25 a 40 años y el 96,1 % entre las personas de 41 a 59 años (INEI, 2025).

Estos indicadores muestran que existe una población relevante que combina el uso de vehículos con una alta adopción de dispositivos móviles, características necesarias para el uso de una plataforma como ParkLink.

---

#### Segmento 2: Propietarios y administradores de espacios de estacionamiento

**Características demográficas y organizacionales:**
- Personas naturales, principalmente mayores de 25 años, que sean propietarias o administradoras de uno o más espacios de estacionamiento.
- Hombres y mujeres sin distinción de género.
- Residentes principalmente de Lima Metropolitana.
- Propietarios de viviendas, departamentos, cocheras u otros inmuebles que dispongan de espacios que permanezcan libres durante determinados horarios.
- Empresas, negocios, edificios residenciales u organizaciones que administren espacios de estacionamiento.
- Personas o administradores con acceso a teléfonos inteligentes e Internet para gestionar sus espacios mediante la plataforma.

**Características de comportamiento:**
- Cuentan con espacios de estacionamiento que no son utilizados permanentemente.
- Buscan aprovechar mejor sus espacios disponibles.
- Tienen interés en obtener ingresos adicionales.
- Desean administrar horarios, disponibilidad y reservas de manera sencilla.
- Buscan mecanismos digitales que permitan conectar sus espacios con potenciales usuarios.

**Necesidades:**
- Publicar espacios de estacionamiento fácilmente.
- Establecer los horarios en los que se encuentran disponibles.
- Definir precios por hora o periodo.
- Gestionar solicitudes y reservas.
- Recibir pagos de manera segura.
- Incrementar el aprovechamiento de espacios que permanecen desocupados.

**Relevancia del segmento:**

Aunque actualmente no se dispone de una estadística oficial que determine específicamente cuántos propietarios particulares poseen cocheras libres para alquiler en Lima Metropolitana, existen indicadores que muestran una oferta considerable de infraestructura destinada al estacionamiento.

Por ejemplo, la Municipalidad de San Isidro registra 914 espacios sujetos al servicio de estacionamiento vehicular y 1.658 espacios adicionales dentro de su sistema de estacionamiento rotativo. Asimismo, las plataformas geográficas oficiales utilizadas para el análisis de movilidad urbana de Lima contemplan categorías específicas de estacionamientos y estacionamientos formales.

Estos datos permiten evidenciar la existencia de una oferta de espacios de estacionamiento en el entorno urbano. Para ParkLink, la cantidad específica de propietarios interesados en ofrecer espacios privados será determinada posteriormente mediante entrevistas, encuestas y la validación de la solución con usuarios potenciales.

