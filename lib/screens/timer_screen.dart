import 'package:flutter/material.dart';
import 'package:deimox_apli/models/exercise.dart';
import 'package:deimox_apli/widgets/exercise_timer.dart';

class TimerScreen extends StatefulWidget {
  final Exercise exercise;
  final int duration;

  TimerScreen({required this.exercise, required this.duration});

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late ExerciseTimer _exerciseTimer; // Cambio aquí

  @override
  void initState() {
    super.initState();
    _exerciseTimer = ExerciseTimer(
      duration: widget.duration,
      onTimerEnd: () {
        Navigator.pop(context);
      },
    );
  }

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
            _exerciseTimer, // Uso de _exerciseTimer
          ],
        ),
      ),
    );
  }
}