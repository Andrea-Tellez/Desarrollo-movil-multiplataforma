import 'dart:async';
import 'dart:io';
import 'dart:convert';
void main (){
  print("¿Cuál es la base del del Rectangulo? ");
  double base = double.parse(stdin.readLineSync());
  print("¿Cuál es la altura del del Rectangulo? ");
  double altura = double.parse(stdin.readLineSync());
  double formula = (base*altura);
  double pokemon = 30;
  double capacidad = formula/pokemon;
  print ("Los pokemones que caben en un rectángulo son: ");
  print(capacidad);
}
