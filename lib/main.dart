import 'package:flutter/material.dart';
import 'package:mendez_juan_aplicacion/screens/home_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Méndez Juan App',
      home: HomeScreen()
    );
  }
}