# CLAUDE.md — Proyecto Reporting AGROSANA

## Descripcion del proyecto
- App de reporting financiero para AGROSANA / AHL / FTP.
- Genera informes de PyG, Balance (BS) y Cash Flow (CF) en formato HTML interactivo.
- Archivo principal: `Reporting_app_v1.html` (single-file HTML app).

## Tecnologia
- React 18 + Babel standalone + Tailwind CSS + Lucide icons (todos via CDN).
- xlsx.js para lectura y exportacion de Excel.
- Sin instalaciones, sin build tools. Todo en un unico archivo HTML.

## Estructura del proyecto
- `Reporting_app_vXX.html` — versiones de la app (patron igual al proyecto presupuesto).
- `CLAUDE.md` — instrucciones del proyecto.
- Archivos `.xlsx` de datos — NO se commitean (ver .gitignore).

## Datos y carga
- **Configuracion (una vez):** PyG Historico, PyG Presupuesto, BS Historico, BS Presupuesto, NoRec Ppto, OPEX Hist+Ppto.
- **Datos mensuales:** PyG Real/Estimado Evol, BS Evol, NoRec Real, OPEX Real, CAPEX Real, DFN.
- Los datos de configuracion se guardan en localStorage del navegador.

## Vistas del report
- PyG: MES / YTD / EVOL
- BS: YTD / EVOL
- CF: MES / YTD / EVOL (calculado automaticamente)
- Zooms: No Recurrentes, OPEX, CAPEX, DFN, WC

## Colores
- Azul: Historico (ano anterior)
- Naranja: Real ano actual
- Verde: Presupuesto

## Convenciones de codigo
- Nunca usar acentos, letra n con tilde ni caracteres especiales en el codigo (variables, IDs, clases, comentarios).
- Mantener patron de versionado `_vXX` en el nombre del archivo.
- No cambiar nombre de archivos sin confirmacion explicita.
