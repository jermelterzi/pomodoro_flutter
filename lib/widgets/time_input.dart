import 'package:flutter/cupertino.dart';

class TimeInput extends StatelessWidget {
  final String title;
  final int value;

  const TimeInput({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Text('$value'),
      ],
    );
  }
}
