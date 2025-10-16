import 'package:flutter/material.dart';

class TextfieldCustom extends StatelessWidget {
  const TextfieldCustom({super.key, required this.textoTitulo, required this.controller});
  final String textoTitulo;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(textoTitulo),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Escribe algo...',
            filled: true,
            fillColor: Colors.grey, // color de fondo
            contentPadding: EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 20.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0), // forma redonda
              borderSide: BorderSide.none, // sin borde visible
            ),
          ),
        ),
      ],
    );
  }
}
