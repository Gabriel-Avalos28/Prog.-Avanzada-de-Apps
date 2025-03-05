import 'package:flutter/material.dart';
import 'package:flutter_application_menutriple/inicio/inicio.dart';
import 'package:flutter_application_menutriple/providers/prop1_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Miprovider>(create: (context) => Miprovider()),
      ],
      child: MaterialApp(
        title: 'App Title',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyInicio(),
      ),
    );
  }
}
