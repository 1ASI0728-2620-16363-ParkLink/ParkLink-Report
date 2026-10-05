# Reproducción de diagramas del Capítulo VI

Estos artefactos son **diagramas de organización, navegación y proceso**, no
wireframes, mock-ups, screenshots ni prototipos visuales de interfaces. Los
artefactos gráficos manuales se mantienen como marcadores en el informe.

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
  explicación y el marcador del Wireflow visual manual.
- Revisar presencia de inicio, decisiones, recuperación de errores, confirmación
  y final en cada flujo; los estados pendientes no se presentan como éxito.
- Mantener el panel web como monitoreo: las operaciones pertenecen a la app móvil.
- No agregar funcionalidades fuera de US-LP01–US-LP04, US01–US23 y las capacidades
  ya previstas en Capítulos IV/V.
- Mantener todos los marcadores manuales literalmente como
  `[DEJAR VACÍO – INSERTAR AQUÍ: nombre del artefacto]`.
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
