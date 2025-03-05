import 'package:flutter/material.dart';

class MyConts extends StatefulWidget {
  const MyConts({super.key});

  @override
  State<MyConts> createState() => _MyContsState();
}

class _MyContsState extends State<MyConts> {
  TextEditingController Nombreactualizado1 = TextEditingController();
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
                  "Propuesta 3",
                  style: TextStyle(
                    fontSize: 23.0, // Tamaño de letra aumentado
                    fontWeight: FontWeight.bold, // Opcional: para negrita
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                "Ingresa tu nombre",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
          TextField(
            controller: Nombreactualizado1,
            decoration: InputDecoration(
              hintText: "Escribe aquí", // Texto de sugerencia
            ),
          ),
          SizedBox(height: 15.0),
          ElevatedButton(
            onPressed: () {
              String nombreIngresado = Nombreactualizado1.text.trim();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Hola: $nombreIngresado")),
              );
            },
            child: Text(
              "Dame click",
            ),
          ),
        ],
      ),
    );
  }
}
