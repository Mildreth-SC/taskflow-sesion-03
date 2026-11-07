# Evidencias — sesión 3

Capturas y una grabación del listado de TaskFlow. Pertenecen a este repositorio, [Mildreth-SC/taskflow-sesion-03](https://github.com/Mildreth-SC/taskflow-sesion-03).

## Procedencia

- Fecha de las capturas: 7 de noviembre de 2026.
- Dispositivo: emulador remoto Android. Es una captura real del emulador, no una captura de un teléfono físico.
- Sistema: Android 15, API 35. Imagen `system-images;android-35;google_apis;x86_64`.
- AVD: `taskflow_api35`.
- Cadena de compilación registrada con estas capturas: Flutter 3.47.9 y Dart 3.13.7.
- Toma: `adb exec-out screencap -p` sobre el emulador, con el APK de depuración de esta app (`com.example.taskflow`, actividad `.MainActivity`).
- Código fuente usado: `main` en `b25178514b025945db2108de44c3ce17f231c0d9` (`feat: mostrar listado local de tareas`). El archivo `lib/main.dart` de ese commit sigue igual en el `main` actual (`15476756be5869b0a26aa2079dc5f9a61b425600`). El texto de las tarjetas coincide con `demoTasks` en `lib/main.dart` de ese SHA. La nota que acompaña los PNG indica que el APK salió de un clon de solo lectura, sin editar el código de la app.

## Tamaños

| Archivo | Píxeles | Qué muestra |
| --- | --- | --- |
| [sesion-03-listado-completo.png](docs/evidencias/sesion-03-listado-completo.png) | **1080×2400** | Pantalla completa del AVD. Las cinco tarjetas caben sin desplazar. |
| [sesion-03-antes-de-desplazar.png](docs/evidencias/sesion-03-antes-de-desplazar.png) | **1080×1200** | La misma app con la ventana reducida a 1080×1200, antes del deslizamiento. |
| [sesion-03-despues-de-desplazar.png](docs/evidencias/sesion-03-despues-de-desplazar.png) | **1080×1200** | La misma ventana de 1080×1200, después del deslizamiento. |

1080×2400 es el tamaño completo del AVD `taskflow_api35` (420 dpi en la nota de captura). 1080×1200 es esa misma ventana después de `adb shell wm size 1080x1200`, el tamaño con el que el listado sí se desplaza. Esas dos capturas de desplazamiento se tomaron ahí: la de antes deja «Preparar el detalle» fuera de la pantalla y la de después lo muestra. Luego se restauró el tamaño con `wm size reset`.

## Integridad

PNG RGBA de 8 bits, sin entrelazar. Firma PNG, `IHDR` y datos de imagen descomprimidos al tamaño de cada archivo.

| Archivo | SHA-256 |
| --- | --- |
| `sesion-03-listado-completo.png` | `eba92d563ebbf81756e17ab5389707d00cff97bc8fedd1984a8b6a5ceb421218` |
| `sesion-03-antes-de-desplazar.png` | `135a280659f4b6da683d9d321f9efb8cdef68e3699f0043d3cdc28300a334a71` |
| `sesion-03-despues-de-desplazar.png` | `48e55e6e3a4557e0579849708a750a21fead9a39a7a8c260bb4a163f8a528722` |

## Video

[sesion-03-ejecucion.mp4](docs/evidencias/sesion-03-ejecucion.mp4)

- Grabación real del emulador remoto Android 15 (API 35), AVD `taskflow_api35`, con Flutter 3.47.9. No es una captura de un teléfono físico.
- Ventana útil del emulador: **1080×1200**.
- Fotograma grabado: **1080×2400**, con la ventana útil centrada y bandas negras de 600 px arriba y 600 px abajo.
- Contenedor MP4, vídeo H.264, 16 s, 24 fps, 805228 bytes. SHA-256 `4c3f07990253c8c558a80908ddffcb12628da7579d2a2ae186414ecf9a4d26e3`.
- Recorrido: listado «Mis tareas» con las cinco tareas y dos íconos verdes, desplazamiento hasta «Preparar el detalle» y regreso al inicio. La grabación se queda en el listado.
