import 'package:flutter/material.dart';
import 'package:pomodoro/pages/pomodoro_page.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (context) => PomodoroStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pomodoro app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PomodoroPage(),
      ),
    );
  }
}
