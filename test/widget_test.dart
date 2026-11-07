import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:taskflow/main.dart';

void main() {
  testWidgets('el listado muestra cinco tareas con su estado', (tester) async {
    tester.view.physicalSize = const Size(400, 1200);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const TaskFlowApp());

    expect(find.text('Mis tareas'), findsOneWidget);
    expect(find.byType(TaskCard), findsNWidgets(5));
    expect(find.text('Crear el proyecto TaskFlow'), findsOneWidget);
    expect(
      find.text('Alta · Generar la app y revisar la carpeta android'),
      findsOneWidget,
    );
    expect(find.text('Preparar el detalle'), findsOneWidget);
    expect(
      find.text('Baja · Dejar lista la acción para abrir una tarea'),
      findsOneWidget,
    );
    expect(find.byIcon(Icons.check_circle), findsNWidgets(2));
    expect(find.byIcon(Icons.radio_button_unchecked), findsNWidgets(3));
    expect(find.byIcon(Icons.chevron_right), findsNWidgets(5));

    final completedIcon = tester.widget<Icon>(
      find.byIcon(Icons.check_circle).first,
    );
    expect(completedIcon.color, Colors.green);
    expect(demoTasks, hasLength(5));
  });

  testWidgets('la lista se desplaza hasta la última tarea', (tester) async {
    tester.view.physicalSize = const Size(400, 420);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const TaskFlowApp());

    expect(find.text('Preparar el detalle'), findsNothing);
    await tester.scrollUntilVisible(find.text('Preparar el detalle'), 80);
    expect(find.text('Preparar el detalle'), findsOneWidget);
  });
}
