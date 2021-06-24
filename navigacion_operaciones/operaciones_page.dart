import 'package:flutter/material.dart';

class OperacionesPage extends StatefulWidget {
  OperacionesPage({Key key}) : super(key: key);

  @override
  _OperacionesPageState createState() => _OperacionesPageState();
}

class _OperacionesPageState extends State<OperacionesPage> {

  num numero1 = 0;
  num numero2 = 0;
  num _resultado = 0;

  final num1= TextEditingController();
  final num2= TextEditingController();

  
  void _suma(){
    setState(() {
      numero1 = int.parse(num1.text);
      numero2 = int.parse(num2.text);
      _resultado= numero1 + numero2;
    });
  }
  void _resta(){
    setState(() {
      numero1 = int.parse(num1.text);
      numero2 = int.parse(num2.text);
      _resultado= numero1 - numero2;
    });
  }
  void _multiplicacion(){
    setState(() {
      numero1 = int.parse(num1.text);
      numero2 = int.parse(num2.text);
      _resultado= numero1 * numero2;
    });
  }
  void _division(){
    setState(() {
      numero1 = int.parse(num1.text);
      numero2 = int.parse(num2.text);
      _resultado= (numero1 / numero2).floor();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OperacionesPage"),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: Text("Valor a operar")),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: TextField(
              controller: num1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Introduce el primer valor',
              ),
              onChanged: (text) {
                print("$text");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: Text("Valor a operar")),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: TextField(
              controller: num2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Introduce el segundo valor',
              ),
              onChanged: (text) {
                print("$text");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: Text("El resultado es igual a: $_resultado")),
        ],
      ),
      floatingActionButton: Row (mainAxisAlignment: MainAxisAlignment.end,
      children:[FloatingActionButton(onPressed: _suma,
      tooltip:'suma',
      child: Icon(Icons.add),),
      FloatingActionButton(onPressed: _resta,
      tooltip:'resta',
      child: Icon(Icons.remove),),
      FloatingActionButton(onPressed: _multiplicacion,
      tooltip:'multiplicacion',
      child: Text('X'),),
      FloatingActionButton(onPressed: _division,
      tooltip:'division',
      child: Text('÷'),)
      ])
      );
  }
}