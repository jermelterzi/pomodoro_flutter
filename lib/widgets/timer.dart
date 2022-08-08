import 'package:flutter/material.dart';
import 'package:pomodoro/widgets/timer_button.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: TimerButton(
                  text: 'Iniciar',
                  icon: Icons.play_arrow,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: TimerButton(
                  text: 'Parar',
                  icon: Icons.stop,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: TimerButton(
                  text: 'Reiniciar',
                  icon: Icons.refresh,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
