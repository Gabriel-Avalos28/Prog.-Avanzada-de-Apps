import 'package:flutter/material.dart';
import 'package:flutter_application_menutriple/pages/prop1.dart';
import 'package:flutter_application_menutriple/pages/prop2.dart';
import 'package:flutter_application_menutriple/pages/prop3.dart';

class MyInicio extends StatefulWidget {
  const MyInicio({super.key});

  @override
  State<MyInicio> createState() => _MyInicioState();
}

class _MyInicioState extends State<MyInicio> {
  int idx = 0;

  List<Widget> pages = [
    MySettings(),
    MyHomePage(),
    MyConts(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deber 3'),
      ),
      body: pages[idx],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
          BottomNavigationBarItem(icon: Icon(Icons.bolt), label: "contador")
        ],
        currentIndex: idx,
        onTap: (value) {
          setState(() {
            idx = value;
          });
        },
      ),
    );
  }
}
