import 'package:flutter/material.dart';
import 'package:pomodoro/widgets/time_input.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('Pomodoro'),
          TimeInput(
            title: 'Trabalho',
            value: 25,
          ),
          TimeInput(
            title: 'Descanso',
            value: 5,
          ),
        ],
      ),
    );
  }
}
