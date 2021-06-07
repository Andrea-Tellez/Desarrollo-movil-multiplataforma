import 'dart:async';
import 'dart:io';
import 'dart:convert';

void main(){
  print ("¿Cuantos registros deseas almacenar?");
  int numero = int.parse(stdin.readLineSync());
  final resultado = new Sensores();
  List informacion = []; 
  resultado.anadir(informacion,numero);
  resultado.mostrar(informacion);
}

class Sensores{
  void anadir(informacion,numero){
    for (var i = 0; i < numero; i++){
     print("");
     print("");
     print("");
     print ("¿Cuál es la id del sensor?");
     var id_almacenado=stdin.readLineSync();
     print ("¿Cuál es el valor del sensor?");
     var valor_almacenado=stdin.readLineSync();
     print ("¿Cuál es la fecha del sensor?");
     var fecha_almacenado=stdin.readLineSync();
     Map <dynamic, dynamic> datos ={"id_sensor" : null , "valor": null, "fecha" : null};
     datos["id_sensor"] = id_almacenado;
     datos["valor"] = valor_almacenado;
     datos["fecha"] = fecha_almacenado;
     informacion.add(datos);
    }
    }
    void mostrar(List informacion){
    informacion.forEach((var data) => print(data));
    }
}