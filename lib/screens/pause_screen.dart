import 'package:flutter/material.dart';
import 'package:deimox_apli/models/exercise.dart';
import 'package:deimox_apli/widgets/exercise_tile.dart';
import 'package:deimox_apli/screens/timer_screen.dart';

class PauseScreen extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(name: 'Estiramiento de brazos', description: 'Descripción...'),
    Exercise(name: 'Estiramiento de piernas', description: 'Descripción...'),
    Exercise(name: 'Respiración profunda', description: 'Descripción...'),
    Exercise(name: 'Girar el cuello', description: 'Descripción...'),
    // Agregar más ejercicios según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicios de Pausas Activas'),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return ExerciseTile(
            exercise: exercises[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TimerScreen(
                    exercise: exercises[index],
                    duration: 60, // Duración del ejercicio en segundos
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
