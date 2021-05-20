import 'dart:async';
import 'dart:io';
import 'dart:convert';
void main (){
  print("¿Cuántos años tiene tu perro?");
  double edad_en_perros= double.parse(stdin.readLineSync());
  double edad_en_humanos= 7;
  double edad = (edad_en_perros*edad_en_humanos);
  print("La edad que tiene tu perro en años humanos es: ");
  print(edad);
}
