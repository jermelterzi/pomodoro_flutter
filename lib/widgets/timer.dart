import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:pomodoro/widgets/timer_button.dart';
import 'package:provider/provider.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) => Container(
        color: store.isWorking() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.isWorking() ? 'Hora de Trabalhar' : 'Hora de Descansar',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 120,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                store.started
                    ? Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: TimerButton(
                          text: 'Parar',
                          icon: Icons.stop,
                          click: store.stop,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: TimerButton(
                          text: 'Iniciar',
                          icon: Icons.play_arrow,
                          click: store.start,
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TimerButton(
                    text: 'Reiniciar',
                    icon: Icons.refresh,
                    click: store.restart,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
