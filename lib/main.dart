import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mendez_juan_aplicacion/screens/registro.dart';
///import 'package:mendez_juan_aplicacion/login.dart';
///import 'package:mendez_juan_aplicacion/screens/home_screen.dart';

void main() => {
  WidgetsFlutterBinding.ensureInitialized(),
  ///Firebase.initializeApp(),
  runApp(MyApp()),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Méndez Juan App',
      home: Registro(),
      ///home: LoginView()
      ///home: HomeScreen()
    );
  }
}