import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class InputButton extends StatelessWidget {
  final IconData icon;
  final void Function()? function;

  const InputButton({
    Key? key,
    required this.icon,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16.0),
        primary: store.isWorking() ? Colors.red : Colors.green,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
