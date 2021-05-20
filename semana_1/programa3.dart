import 'dart:async';
import 'dart:io';
import 'dart:convert';
void main (){
  print("¿Cuál es la calificación de la primera evaluación? ");
  double evaluacion_uno = double.parse(stdin.readLineSync());
  print("¿Cuál es la calificación de la primera evaluación? ");
  double evaluacion_dos = double.parse(stdin.readLineSync());
  print("¿Cuál es la calificación de la primera evaluación?: ");
  double evaluacion_tres = double.parse(stdin.readLineSync());
  double eval_1 = (evaluacion_uno*20)/100;
  double eval_2 = (evaluacion_dos*30)/100;
  double eval_3 = (evaluacion_tres*50)/100;
  double promedio = (eval_1 + eval_2 + eval_3);
  print("El promedio del alumno es: ");
  print(promedio);
}
