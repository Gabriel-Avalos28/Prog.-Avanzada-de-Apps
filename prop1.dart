import 'package:flutter/material.dart';

class MySettings extends StatefulWidget {
  const MySettings({super.key});

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  TextEditingController Nombreactualizado = TextEditingController();
  String _username = ""; // Estado local para almacenar el nombre

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment
                    .centerLeft, // Asegura que esté alineado a la izquierda
                child: Text(
                  "Propuesta 1",
                  style: TextStyle(
                    fontSize: 23.0, // Tamaño de letra aumentado
                    fontWeight: FontWeight.bold, // Opcional: para negrita
                  ),
                ),
              ),
              Text(
                _username,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          TextField(
            controller: Nombreactualizado,
            decoration: InputDecoration(
              hintText: "Escribe aquí", // Texto de sugerencia
            ),
          ),
          SizedBox(height: 15.0),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _username = Nombreactualizado
                    .text; // Actualiza el estado con setState()
              });
            },
            child: Text(
              "click me",
            ),
          ),
        ],
      ),
    );
  }
}
