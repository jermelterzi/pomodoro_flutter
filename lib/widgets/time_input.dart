import 'package:flutter/material.dart';
import 'package:pomodoro/widgets/input_button.dart';

class TimeInput extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? incFunction;
  final void Function()? decFunction;

  const TimeInput({
    Key? key,
    required this.title,
    required this.value,
    this.incFunction,
    this.decFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputButton(
              icon: Icons.arrow_downward,
              function: decFunction,
            ),
            Text(
              '$value min',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            InputButton(
              icon: Icons.arrow_upward,
              function: incFunction,
            ),
          ],
        ),
      ],
    );
  }
}
