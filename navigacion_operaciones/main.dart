import 'package:flutter/material.dart';
import 'package:operaciones_basicas/pages/menu_page.dart';
import 'package:operaciones_basicas/pages/operaciones_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: 'menu',
      routes: <String, WidgetBuilder>{
        'menu':(BuildContext context) => MenuPage(),
        'operaciones' : (BuildContext context) => OperacionesPage()
      },
    );
  }
}
