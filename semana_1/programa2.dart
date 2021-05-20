import 'dart:async';
import 'dart:io';
import 'dart:convert';
void main (){
  print("¿Cuál es la medida del lado 1?");
  double lado_uno = double.parse(stdin.readLineSync());
  print("¿Cuál es la medida del lado 2? ");
  double lado_dos = double.parse(stdin.readLineSync());
  print("¿Cuál es la medida del lado 3? ");
  double lado_tres = double.parse(stdin.readLineSync());
  print("Cuál es la medida del lado 4: ");
  double lado_cuatro = double.parse(stdin.readLineSync());
  print("¿Cuál es la medida del lado 5? ");
  double lado_cinco= double.parse(stdin.readLineSync());
  print("Cuál es la medida del 6? ");
  double lado_seis = double.parse(stdin.readLineSync());
  double resultado = (lado_uno+lado_dos+lado_tres+lado_cuatro+lado_cinco+lado_seis);
  print("El perímetro  del hexágono es  : ");
  print(resultado);
}