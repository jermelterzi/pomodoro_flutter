import 'package:flutter/material.dart';

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
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16.0),
        primary: Colors.red,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
