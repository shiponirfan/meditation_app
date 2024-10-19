import 'package:flutter/material.dart';
import 'package:meditation_app/utils/app_color.dart';
import 'package:meditation_app/views/welcome/startup_screen.dart';

class MeditationApp extends StatelessWidget {
  const MeditationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
        fontFamily: 'HelveticaNeue',
      ),
      home: const StartupScreen(),
    );
  }
}
