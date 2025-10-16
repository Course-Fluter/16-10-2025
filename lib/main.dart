import 'package:flutter/material.dart';
import 'package:jueves_16/formulario.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Formulario(),
      ),
    );
  }
}
