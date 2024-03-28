import 'package:flutter/material.dart';
import 'package:deimox_apli/models/exercise.dart';
//import 'package:deimox_apli/widgets/exercise_tile.dart';
import 'package:deimox_apli/screens/timer_screen.dart';

class HomePage extends StatelessWidget {
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
        title: Text(
          'Ejercicios de Pausas Activas',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    exercises[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    exercises[index].description,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TimerScreen(
                          exercises: exercises,
                          exerciseIndex: index,
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
