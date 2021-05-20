import 'dart:async';
import 'dart:io';
import 'dart:convert';
void main () {
  print("¿Cuál es la base del triángulo? ");
  double base = double.parse(stdin.readLineSync());
  print("¿Cuál es  la altura del triángulo?: ");
  double altura = double.parse(stdin.readLineSync());
  double formula = (base*altura)/2;
  print("El área del triangulo es : ");
  print(formula);
}
