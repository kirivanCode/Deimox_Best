import 'dart:async'; // Agrega esta línea para importar Timer
import 'package:flutter/material.dart';

class ExerciseTimer extends StatefulWidget {
  final int duration;
  final VoidCallback onTimerEnd;

  ExerciseTimer({required this.duration, required this.onTimerEnd});

  @override
  _ExerciseTimerState createState() => _ExerciseTimerState();
}

class _ExerciseTimerState extends State<ExerciseTimer> {
  late int _seconds;
  late bool _isRunning;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _seconds = widget.duration;
    _isRunning = true;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        timer.cancel();
        _isRunning = false;
        widget.onTimerEnd();
      } else if (_isRunning) {
        setState(() {
          _seconds--;
        });
      }
    });
  }

  void _pauseOrResume() {
    setState(() {
      _isRunning = !_isRunning;
    });
  }

  void _reset() {
    setState(() {
      _seconds = widget.duration;
      _isRunning = true;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tiempo restante: $_seconds segundos',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _pauseOrResume,
              child: Text(_isRunning ? 'Pausa' : 'Reanudar'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: _reset,
              child: Text('Restablecer'),
            ),
          ],
        ),
      ],
    );
  }
}
