import 'package:flutter/material.dart';
import 'package:personality_test/Screens/PersonalityTestApp.dart';
import 'package:personality_test/Screens/StartScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _mainAppState();
}

class _mainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PersonalityTestApp());
  }
}
