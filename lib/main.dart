import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ControleHabitosApp());
}

class ControleHabitosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Hábitos',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}