import 'package:flutter/material.dart';
import 'package:deimox_apli/models/exercise.dart';
import 'package:deimox_apli/widgets/timer.dart';

class TimerScreen extends StatefulWidget {
  final Exercise exercise;

  TimerScreen({required this.exercise, required int duration});

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio: ${widget.exercise.name}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.exercise.description),
            SizedBox(height: 20),
            TimerWidget(
              duration: 30, // Cambia a la duración que desees
              onTimerEnd: () {
                // Al finalizar el temporizador
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}