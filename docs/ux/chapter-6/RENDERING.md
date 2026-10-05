# Reproducción de diagramas del Capítulo VI

Este documento cubre dos familias distintas de artefactos:

1. **Diagramas Mermaid** (`assets/chapter-6/*.svg`): organización, navegación y
   proceso lógico. Son grafos de decisiones, no pantallas.
2. **Wireflows visuales** (`assets/chapter-6/wireflows/wf-01.png` … `wf-13.png`):
   composiciones que conectan **capturas reales de pantallas** con flechas
   rotuladas y callouts de transición. No son diagramas Mermaid ni sustituyen a
   estos.

Las exportaciones de los mock-ups y wireframes originales de Figma se documentan
por separado en `figma-assets.json`, que ahora incluye 43 registros: 21
exportaciones directas de Figma, 13 composiciones de Wireflow, 1 specimen del
sistema de diseño y 8 capturas de la Landing Page desplegada.

## Fuentes y salidas

| Grupo | Fuentes Mermaid | Resultado |
|---|---|---|
| Sitemap completo | `sitemap-overview`, `sitemap-landing`, `sitemap-mobile`, `sitemap-web` | Cuatro vistas complementarias de organización por canal y rol |
| Búsqueda | `search-flow` | Validación, consulta, ampliación de radio y recuperación |
| Navegación | `navigation` | Recorridos, retorno y separación móvil/web |
| Adopción y acceso | `wf-01-adoption`, `wf-02-account` | Inicio por audiencia e identidad autorizada |
| Conductor | `wf-03-search`, `wf-04-booking`, `wf-05-cancellation`, `wf-06-extension`, `wf-07-history`, `wf-08-copilot`, `wf-09-proactive` | Metas H1–H4 de Humberto |
| Propietario | `wf-10-publication`, `wf-11-offer`, `wf-12-access`, `wf-13-income` | Metas J1–J4 de Jarol |

Cada nombre corresponde a `docs/ux/chapter-6/<nombre>.mmd` y a
`assets/chapter-6/<nombre>.svg`: **19 diagramas** en total.

La configuración `mermaid-config.json` conserva #080808, #02EBD8 y #FFFFFF;
declara Inter con alternativa Arial/sans-serif para los visores que no dispongan
de la familia. Los labels de nodos usan énfasis Bold. Se deshabilitan labels HTML
para obtener texto SVG nativo, sin depender de soporte de `foreignObject`.
La tipografía de pantallas deberá incorporar Inter como recurso autorizado al
implementar la interfaz; estos gráficos no acreditan ese trabajo.

## Renderizado

Herramienta verificada: `@mermaid-js/mermaid-cli` **11.14.0**, con Chromium
compatible. Ejecutar desde la raíz del repositorio. Si Puppeteer no encuentra
su navegador, definir `PUPPETEER_EXECUTABLE_PATH` con la ruta de un Chromium
disponible en el equipo; no versionar rutas personales.

```sh
mkdir -p assets/chapter-6
for name in \
  sitemap-overview sitemap-landing sitemap-mobile sitemap-web search-flow navigation \
  wf-01-adoption wf-02-account wf-03-search wf-04-booking wf-05-cancellation \
  wf-06-extension wf-07-history wf-08-copilot wf-09-proactive \
  wf-10-publication wf-11-offer wf-12-access wf-13-income; do
  mmdc -i "docs/ux/chapter-6/$name.mmd" \
    -o "assets/chapter-6/$name.svg" \
    -b '#080808' -c docs/ux/chapter-6/mermaid-config.json || exit 1
done
```

El fondo explícito permite leer flechas blancas en visores claros y oscuros.
Las fuentes Mermaid siguen disponibles para revisión/cambios sin editar el SVG.

## Verificación editorial

- Comprobar los apartados 6.1–6.4 y sus subsecciones en el índice y cuerpo.
- Comprobar que cada WF tenga Persona, Goal, descripción, Task Flow, flujograma,
  explicación y el Wireflow visual que lo acompaña.
- Revisar presencia de inicio, decisiones, recuperación de errores, confirmación
  y final en cada flujo; los estados pendientes no se presentan como éxito.
- Mantener el panel web como monitoreo: las operaciones pertenecen a la app móvil.
- No agregar funcionalidades fuera de US-LP01–US-LP04, US01–US23 y las capacidades
  ya previstas en Capítulos IV/V.
- Mantener los marcadores manuales literalmente como
  `[DEJAR VACÍO – INSERTAR AQUÍ: nombre del artefacto]` **solo mientras el
  artefacto no exista**. Los 24 marcadores de la entrega anterior quedaron
  resueltos; no reintroducirlos.
- Confirmar que los 19 SVG contienen texto y no errores de sintaxis; verificar
  rutas relativas, flechas, labels y legibilidad al abrirlos.
- Revisar que Capítulos I–V y conclusiones/bibliografía no cambien por esta entrega.

## Insumos y referencias

- `README.md`, 2.3.1–2.3.2: personas y matriz de tareas; revisar también las imágenes
  originales `assets/cap-2/user-persona-conductor.png` y
  `assets/cap-2/user-persona-empresario.png` para las ocho metas.
- `README.md`, 3.1–3.2: To-Be, historias y criterios de aceptación.
- `README.md`, 4.3.3 y Capítulo V: canales, roles, disponibilidad informativa,
  confirmación por Reservation, saga financiera y consentimiento del agente.
- [WCAG 2.2](https://www.w3.org/TR/WCAG22/): referencia de accesibilidad; los ratios
  calculados de la paleta no equivalen a una auditoría de pantallas aún inexistentes.
- [Google Search: meta tags](https://developers.google.com/search/docs/crawling-indexing/special-tags):
  `keywords` se incluye por rúbrica, no influye en ranking de Google.
- [App Store Connect: información de versión](https://developer.apple.com/help/app-store-connect/reference/app-information/platform-version-information):
  la ficha textual es una propuesta, no evidencia de publicación en tiendas.

## Exportaciones de Figma aportadas por el equipo

Se incorporaron los trece nodos suministrados del archivo
`V1g8K28w9cpOi5NTJuu468`: tres recursos de marca y diez vistas completas de
interfaz. Se exportaron también tres bloques internos del panel web para mejorar
la lectura de sus indicadores, mapa/actividad y listado de espacios. No son tres
pantallas adicionales ni composiciones creadas fuera del archivo.

Se exportaron **cinco wireframes de baja fidelidad** adicionales del mismo
archivo (`8:2178` explorar y mapa móvil, `8:3129` web del propietario, `8:2454`
ticket y confirmación, `8:2854` móvil del propietario, `8:2642` detalle del
estacionamiento). Los veintiún PNG de Figma se conservaron sin rediseño en
`assets/chapter-6/figma/`. `figma-assets.json` registra nodo, nombre original,
categoría, URL de origen, dimensiones del PNG exportado, tamaño en bytes y
SHA-256. Las dimensiones corresponden a la captura devuelta por Figma, no
necesariamente al tamaño lógico del frame: el exportador reduce algunas vistas
largas hasta 1024 píxeles de altura y puede incluir efectos visibles en sus
límites. Los enlaces a nodos permiten revisar el diseño original con mayor
detalle.

Estas imágenes acreditan **diseño estático**, no ejecución del software,
integraciones financieras/IoT ni navegación de un prototipo interactivo. Los
Wireflows de `assets/chapter-6/wireflows/` son composiciones editoriales deParkTeam
que reutilizan esas capturas; esa autoría se declara en el pie de cada figura.

## Wireframe de la Landing Page en Figma

El wireframe autoritativo de 6.3.1 es el nodo `18:3683` («landing wirefrmae»),
elaborado por el equipo en el archivo original. Tamaño lógico 1280 × 7175,5 px,
**solo escritorio**: no existe un frame móvil equivalente en el documento.

```sh
# Frame completo, para trazabilidad (el MCP lo entrega en 185x1024 por su altura)
# Nodos por sección, legible:
18:3686 hero            18:3762 pasos           18:3816 propuesta de valor
18:3962 copilot         18:4049 tabla           18:4097 personas
18:4131 equipo          18:4192 preguntas       18:4237 CTA        18:4253 pie
```

Todas las exportaciones están en `assets/chapter-6/figma/` con prefijo
`landing-wireframe-figma-`. La composición por secciones que usa el informe es
`assets/chapter-6/landing/landing-wireframe-figma-secciones.png`.

**Regla de exportación.** `get_screenshot` no acepta parámetros de escala y reduce
los frames de más de 1024 px de alto. Un frame de 7175 px llega en 185 × 1024:
inservible. Para legibilidad, exportar **cada sección por separado**; el frame
completo se conserva solo como registro de trazabilidad.

La evidencia móvil de 6.3.1 no proviene de Figma: es una representación de baja
fidelidad del layout desplegado, rotulada como tal en el informe.

## Limitación de escritura en Figma

El conector Figma Desktop MCP disponible en este entorno expone únicamente
herramientas de lectura y exportación: `get_metadata`, `get_design_context`,
`get_screenshot`, `get_variable_defs`, `get_motion_context` y `get_figjam`. No
existe herramienta de escritura (`use_figma`), por lo que **no se pueden crear
frames nuevos ni modificar el archivo**. Esto no afecta a los artefactos
entregados: todo lo incorporado ya existía en el archivo o se compuso de
exportaciones. Para añadir un frame móvil del wireframe hace falta habilitar un
conector con permisos de escritura sobre `V1g8K28w9cpOi5NTJuu468`.

Para actualizar una imagen, exportar nuevamente el mismo nodo mediante el
servidor Figma Desktop MCP, mantener el nombre del archivo, revisar el contenido
y actualizar dimensiones/hash en el registro. No guardar sesiones MCP,
credenciales o enlaces temporales de descarga en el repositorio.

## Evidencia de la Landing Page

La Landing Page es el único artefacto de este capítulo **desplegado y verificado
en ejecución**: <https://parklink-tp1-landing.vercel.app> (proyecto Vercel
`parklink-tp1-landing`, equipo `maximoff19s-projects`).

- Las capturas de `assets/chapter-6/landing/` se tomaron de esa URL en producción.
- Los wireframes de la misma carpeta son de baja fidelidad y **derivados del
  layout desplegado**, no nodos de Figma.
- El código fuente se mantiene deliberadamente fuera de este repositorio. No
  versionar `.vercel/`, `.env.local` ni el token OIDC que genera `vercel link`.

Regla de captura: las imágenes de la Landing usan `loading="lazy"`, por lo que una
captura de página completa puede registrar imágenes en blanco. Forzar
`img.loading = 'eager'`, esperar `img.decode()` y `document.fonts.ready` antes de
capturar.
