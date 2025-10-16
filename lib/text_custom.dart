import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  const TextCustom({super.key, required this.texto,  this.size});
  final String texto;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontSize: size??50),
    );
  }
}
