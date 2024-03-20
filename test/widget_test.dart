import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:deimox_apli/screens/pause_screen.dart'; // Importa PauseScreen

void main() {
  testWidgets('PauseScreen UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PauseScreen()));

    // Verificar si el título se muestra correctamente
    expect(find.text('Ejercicios de Pausas Activas'), findsOneWidget);

    // Verificar si los elementos de la lista se muestran correctamente
    expect(find.text('Estiramiento de brazos'), findsOneWidget);
    expect(find.text('Estiramiento de piernas'), findsOneWidget);
    expect(find.text('Respiración profunda'), findsOneWidget);
    expect(find.text('Girar el cuello'), findsOneWidget);
  });
}