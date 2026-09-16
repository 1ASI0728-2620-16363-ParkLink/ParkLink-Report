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
| Fabian Alejandro Oliva Lopez     | Me considero una persona activa en los proyectos, impulsando al equipo a realizar buenos trabajos. Mi objetivo es brindar apoyo y dar lo mejor de mí para fomentar un ambiente colaborativo y de respeto.                                                                                                                                 | foto |
|  Amir Gabriel Castro Sanchez   | Soy estudiante de Ingeniería de Software con interés en el desarrollo backend y la creación de aplicaciones móviles. Tengo conocimientos en el diseño e implementación de servicios y APIs, integración con bases de datos y desarrollo de funcionalidades para aplicaciones móviles. Me caracterizo por ser una persona responsable, colaborativa y con disposición para aprender nuevas tecnologías que permitan desarrollar soluciones eficientes y escalables.      | foto |
| Pietro Osores Marchese           | Soy Pietro Osores Marchese, estudiante de Ingeniería de Sistemas con interés en el desarrollo de software y la innovación tecnológica. Mi perfil combina habilidades en programación frontend, diseño de interfaces y gestión de proyectos ágiles, con un enfoque en la creación de soluciones digitales funcionales y escalables. Me caracterizo por el trabajo en equipo, la adaptabilidad y la búsqueda constante de nuevas herramientas para optimizar procesos y experiencias de usuario. | foto |
| Daniel Elias Ruiz Huisa    | Soy un estudiante de Ingeniería de Software. Me intereso por el desarrollo web y la evolucion de tecnologias como los nuevos agentes AI. Tengo conocimientos en Frameworks orientados a node.js como Astro, Vue y Angular. Domino lenguajes como python, C++ y typescript. Soy una persona responsable que busca siempre generar un ambiente sano y agradable para todos.     | ![Daniel Ruiz](assets/cap-1/Daniel.jpeg ) |

## 1.2. Solution Profile

### 1.2.1. Nombre del producto

El producto desarrollado lleva por nombre ParkLink, una plataforma digital orientada a la gestión y reserva de estacionamientos.

### 1.2.2 Antecedentes y problemática

En entornos urbanos, encontrar estacionamiento se ha convertido en una tarea compleja debido al crecimiento exponencial del parque automotor y la limitada disponibilidad de espacios. Esta situación obliga a los conductores a recorrer largas distancias en busca de un lugar donde estacionar, generando efectos adversos en múltiples dimensiones de la vida cotidiana.

El crecimiento sostenido de la circulación vehicular en las ciudades ha superado significativamente la capacidad de infraestructura disponible. Los espacios de estacionamiento públicos y privados no han aumentado en la misma proporción que el número de vehículos, creando un desequilibrio crónico entre la demanda y la oferta. Este problema se agrava especialmente en zonas comerciales, centros empresariales, instituciones educativas y áreas residenciales densamente pobladas.

Para analizar esta problemática de manera integral, se aplica la técnica de las **5W's + 2H's**:

#### - What (¿Qué sucede?)
Los conductores no cuentan con información en tiempo real sobre la disponibilidad de estacionamientos, lo que los obliga a buscar manualmente. La falta de visibilidad sobre dónde hay espacios disponibles genera una búsqueda constante e ineficiente, donde los conductores circulan repetidamente por las mismas calles esperando encontrar un lugar libre.

#### - Why (¿Por qué es un problema?)
- **Tráfico innecesario**: La búsqueda de estacionamiento genera viajes adicionales que congestionan las vías urbanas
- **Consumo de combustible**: Se desperdicia combustible buscando un espacio que podría evitarse con información previa
- **Estrés en los conductores**: La incertidumbre y el tiempo de búsqueda prolongado generan ansiedad y frustración
- **Eficiencia del tiempo**: El tiempo invertido en buscar estacionamiento representa una pérdida significativa de productividad
- **Contaminación ambiental**: Los vehículos en búsqueda constante de estacionamiento contribuyen a la emisión de gases contaminantes
- **Accidentes**: El stress y la distracción aumentan el riesgo de incidentes viales menores

#### - Who (¿A quiénes afecta?)
- **Conductores urbanos**: Todos aquellos que utilizan vehículo para movilizarse daily en zonas de alta demanda
- **Propietarios de estacionamientos no utilizados**: Personas o empresas con espacios disponibles que no tienen forma de monetizarlos eficientemente
- **Ciudades en general**: El tráfico causedo por la búsqueda de estacionamiento afecta la movilidad urbana
- **Comercios locales**: Los clientes potenciales pueden evitar zonas donde es difícil estacionar
- **Medio ambiente**: El increase de emisiones afecta la calidad del aire urbano

#### - When (¿Cuándo ocurre?)
- Principalmente en horas pico de la mañana y tarde, cuando las personas se desplazan hacia sus centros de trabajo o estudio
- En eventos especiales, días de pago, o fechas comerciales importantes
- Durante horarios de lunch en zonas empresariales y comerciales
- Los fines de semana en zonas de entretenimiento, centros comerciales y áreas recreativas

#### - Where (¿Dónde ocurre?)
- En zonas urbanas, comerciales y residenciales con alta densidad vehicular
- Centros financieros y distritos empresariales
- Alrededores de universidades, hospitales y centros comerciales
- Calles y avenidas principales con alta circulación
- Espacios de estacionamiento subutilizados en residencial areas

#### - How (¿Cómo sucede?)
- **Falta de plataformas digitales centralizadas**: No existe una herramienta unificada que conecte oferta y demanda
- **Información desactualizada o inexistente**: Los sistemas existentes no reflejan la disponibilidad real en tiempo real
- **Procesos manuales**: tanto para propietarios como para usuarios, todo se maneja de forma tradicional
- **Desconexión entre partes**: Los propietarios no tienen cómo dar a conocer sus espacios disponibles
- **Ausencia de sistemas de reservas**: No hay forma de garantizar un espacio con anticipación

#### - How Much (¿Cuánto cuesta o impacta?)
- **Económico**: Gasto adicional de combustible estimado en porcentajes significativos del presupuesto familiar
- **Ambiental**: Aumento de emisiones de CO2 por vehículos circulando sin necesidad
- **Social**: Estrés, pérdida de tiempo familiar y reducción de la calidad de vida
- **Productividad**: Horas de trabajo perdidas en búsqueda de estacionamiento
- **Económico para propietarios**: Ingresos no percibidos por espacios subutilizados

### 1.2.3 Lean UX Process

El proceso de Lean UX se enfoca en crear productos digitales eficientes mediante la experimentación rápida y la validación constante de hipótesis, priorizando la colaboración y el aprendizaje continuo. En el caso de ParkLink, plataforma de reserva de estacionamientos, el proceso Lean UX se desarrolló en las siguientes fases:

#### Comprender 
En esta fase, se realizó una investigación cualitativa centrada en el comportamiento de los conductores en zonas urbanas, enfocándonos en entender cómo buscan actualmente estacionamiento y cuáles son las principales dificultades que enfrentan. A través de observaciones y supuestos iniciales del equipo, identificamos que la mayoría de los conductores pierde tiempo recorriendo calles sin tener información clara sobre la disponibilidad de espacios.

#### Esbozar
Con los hallazgos obtenidos, comenzamos a diseñar prototipos de baja fidelidad para la plataforma ParkLink. Estos prototipos se enfocaron en funcionalidades clave que respondieran directamente a las necesidades de los usuarios:
- **Mapa interactivo**: Que muestra estacionamientos disponibles según la ubicación del conductor.
- **Sistema de reservas anticipadas**: Para asegurar un espacio antes de llegar al destino.
- **Visualización de precios y horarios**: Facilitando la toma de decisiones.
- **Registro y gestión de espacios**: Permitiendo a los propietarios publicar y administrar sus cocheras.

#### Probar
Se realizaron pruebas de usabilidad con usuarios potenciales, simulando escenarios reales de búsqueda de estacionamiento en zonas de alta demanda. Durante las pruebas, observamos cómo los usuarios interactuaban con el mapa y el sistema de reservas, evaluando la facilidad de uso y la comprensión de la plataforma.

#### Medir 
Una vez implementados los prototipos mejorados, se definieron métricas clave para evaluar el rendimiento de la plataforma. Se analizaron indicadores como el tiempo promedio que tarda un usuario en encontrar estacionamiento, la cantidad de reservas realizadas y la frecuencia de uso de la aplicación.

#### 1.2.3.1 Lean UX Problem Statements

##### Problem Statement 1
Muchos conductores en zonas urbanas pierden tiempo buscando estacionamiento debido a la falta de información en tiempo real sobre espacios disponibles. Esta situación genera congestión vehicular, mayor consumo de combustible, estrés en los usuarios y una experiencia de movilidad ineficiente.

**¿Cómo podríamos diseñar una solución digital que permita a los conductores encontrar y reservar estacionamientos en tiempo real, reduciendo el tráfico y mejorando su experiencia de movilidad?**

---

##### Problem Statement 2

Actualmente, muchos propietarios de estacionamientos o espacios disponibles no cuentan con una plataforma que les permita ofrecer sus cocheras de manera sencilla, segura y organizada. Esto provoca que dichos espacios permanezcan desaprovechados, generando una pérdida de oportunidades económicas.

**¿Cómo podríamos diseñar una plataforma que permita a los propietarios publicar y gestionar sus espacios de estacionamiento de forma fácil, segura y rentable?**

#### 1.2.3.2 Lean UX Assumptions

### 1.2.3.2.1 Business Assumptions
- Existe una alta demanda de soluciones digitales que optimicen la búsqueda de estacionamientos en zonas urbanas.
- Los conductores están dispuestos a pagar por conveniencia, ahorro de tiempo y seguridad al estacionar.
- Los propietarios de espacios buscan generar ingresos adicionales mediante la monetización de sus cocheras.

### 1.2.3.2.2 Business Outcomes
- Generar ingresos a través de comisiones por reservas realizadas en la plataforma.
- Incrementar la base de usuarios activos (conductores y propietarios).
- Posicionar la plataforma como una solución confiable en el mercado de movilidad urbana.

### 1.2.3.2.3 User Assumptions
- Los conductores actualmente buscan estacionamiento de forma manual, sin herramientas digitales especializadas.
- Prefieren soluciones rápidas, intuitivas y que les permitan planificar con anticipación.
- Los propietarios desean una forma sencilla de publicar y gestionar sus espacios sin procesos complejos.

### 1.2.3.2.4 User Outcomes
- Los conductores reducen significativamente el tiempo de búsqueda de estacionamiento.
- Disminuye el estrés asociado a la conducción en zonas congestionadas.
- Los propietarios logran generar ingresos adicionales mediante el uso eficiente de sus espacios.

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

**Segmento 1: Conductores**
- **Características:**
  - Personas que conducen en zonas urbanas
  - Edades entre 20 y 60 años
  - Uso frecuente de apps móviles
    
- **Necesidades:**
  - Encontrar estacionamiento rápido
  - Reducir tiempo de búsqueda
  - Reservar anticipadamente
  - Pago seguro

**Segmento 2: Propietarios de estacionamientos**
- **Características:**
  - Personas o empresas con espacios disponibles
  - Interés en generar ingresos
    
- **Necesidades:**
  - Publicar espacios fácilmente
  - Gestionar reservas
  - Definir precios
  - Recibir pagos seguros

