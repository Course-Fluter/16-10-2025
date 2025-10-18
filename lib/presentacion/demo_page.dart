import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key, required this.titulo});
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(titulo),
      ),
    );
  }
}
