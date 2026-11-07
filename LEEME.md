# TaskFlow — Sesión 3

La pantalla principal ahora es el listado. El contador de la sesión 2 se reemplaza por cinco tarjetas. Todo sigue en `lib/main.dart`.

## Qué hay en el código

- `Task`: id, título, descripción, prioridad y si está completada.
- `demoTasks`: cinco tareas de este proyecto, no las de ejemplo del codelab.
- `TaskCard`: tarjeta reutilizable. El subtítulo muestra prioridad, un punto y la descripción. El ícono verde es una tarea completada; el círculo vacío es una pendiente. El chevron de la derecha es la acción visual de detalle. Todavía no abre otra pantalla: eso es la sesión 4. El codelab une esos textos con `+`. Aquí se usa interpolación (`'$prioridad · $descripción'`) porque `flutter analyze` de esta versión de Flutter marca el `+` como un aviso. El texto que se ve es el mismo.
- `TaskListScreen`: barra “Mis tareas” y un `ListView.builder` que crea una tarjeta por tarea.

Puedes cambiar los títulos por tareas tuyas. Deben seguir siendo cinco, cada una con título, descripción, prioridad y estado.

## Qué comprobar

1. La barra dice “Mis tareas”.
2. Hay cinco tarjetas, cada una con sus datos.
3. La lista se desplaza si no cabe en la pantalla.
4. Al menos una tarjeta se ve completada (ícono verde).

Toma tú la captura del listado desplazable y de una tarea completada.

## Comprobar

```bash
dart format lib
flutter analyze
flutter test
```

## Commit de esta sesión

Las sesiones 2, 3 y 4 cierran el domingo 8 de noviembre de 2026 a las 23:59 (UTC-5).

```bash
git add lib/main.dart
git commit -m "feat: mostrar listado local de tareas"
git push origin main
```

El mensaje del commit debe ir exactamente así.
