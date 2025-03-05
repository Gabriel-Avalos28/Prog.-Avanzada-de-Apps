import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MydrawerState();
}

class _MydrawerState extends State<MyHomePage> {
  late String currentDateTime;

  @override
  void initState() {
    super.initState();
    _updateDateTime();
  }

  void _updateDateTime() {
    setState(() {
      currentDateTime = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Prop 2'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(32.0),
          children: [
            Container(
              alignment: Alignment.center,
              child: Text('Hola Drawer', style: TextStyle(fontSize: 15)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    _updateDateTime();
                    Navigator.pop(context);
                  },
                  child: Text("Cerrar"),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          currentDateTime,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
