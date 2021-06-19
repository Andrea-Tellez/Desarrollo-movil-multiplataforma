import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Incremento y decremento',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Incremento y decremento'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter+=2;
    });
  }
void _decrementCounter() {
    setState(() {
      _counter-=3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(mainAxisAlignment:MainAxisAlignment.end,
      children:[FloatingActionButton(onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),),
      FloatingActionButton(onPressed: _decrementCounter,
      tooltip:'Decrement',
      child: Icon(Icons.remove))
      ])
    );
  }
}
