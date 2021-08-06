import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WritePage extends StatefulWidget {
  WritePage({Key? key}) : super(key: key);

  @override
  _WritePageState createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();
  late String nombre;
  late String email;
  @override
    void dispose() {
      _nombreController.dispose();
      _emailController.dispose();
      super.dispose();
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Write") ,
        ),
        body: _FormularioWrite(),
    );
  } 
  Widget _FormularioWrite(){
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text("Nombre"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: _nombreController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Introduce tu nombre"

            ),

          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text("Email"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextField(
            controller: _emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Introduce tu email"

            ),

          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ElevatedButton(
            child: Container(
              child: Text("Insertar"),
              
            ),
            onPressed: _loginButton,
          ),
        )

      ],
    );

  }
  void _loginButton(){
    setState(() {
          nombre=_nombreController.text;
          email=_emailController.text;
          authUser(nombre, email);
        });
  }
  void authUser (String nombre, String email) async {
    try {
      var url = Uri.parse('https://demo2021-ad5e0-default-rtdb.firebaseio.com/'+'agenda.json');
      Map<String,dynamic> map= new Map<String, dynamic>();
      map['nombre'] = nombre;
      map['email'] = email;
      var response = await http.post(url, body: json.encode(map));
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200){
      Navigator.popAndPushNamed(context, 'read');
    }
    
    }
    catch(error){
      print(error.toString());
    }
  }
}