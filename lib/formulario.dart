import 'package:flutter/material.dart';
import 'package:jueves_16/presentacion/demo_page.dart';
import 'package:jueves_16/text_custom.dart';
import 'package:jueves_16/textfield_custom.dart';

class Formulario extends StatelessWidget {
  Formulario({super.key});
  final TextEditingController controllerNombre = TextEditingController();
  final TextEditingController controllerApellido = TextEditingController();
  final TextEditingController controllerEdad = TextEditingController();

  bool validate() {
    if (controllerNombre.text == "matias") return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCustom(
            texto: "Nombre",
            size: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextCustom(
                texto: "Agregar Usuario",
                size: 30,
              ),
            ],
          ),
          TextfieldCustom(
            textoTitulo: "Nombre",
            controller: controllerNombre,
            tipo: TextInputType.text,
          ),
          TextfieldCustom(
            textoTitulo: "Apellido",
tipo: TextInputType.text,
            controller: controllerApellido,
          ),
          TextfieldCustom(
            textoTitulo: "Edad",
            tipo: TextInputType.number,
            controller: controllerEdad,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            DemoPage(titulo: "Esta es la Pagina Redirigida"),
                      ),
                    );
                  } else {
                    print("Las credenciales no son validas");
                  }
                },
                child: Text("Guardar"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
