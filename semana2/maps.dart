import 'dart:async';
import 'dart:io';
import 'dart:convert';
void main()
{
Map <dynamic, dynamic> datos =
{
"TuNombre" : null , "TuNumero": null, "TuCorreo" : null
};
while (true) 
{
print("\n¿Qué eleccion deseas ejecutar?");
print("Eleccion1: Mostrar todos los datos");
print("Eleccion2: Insertar un nuevo registro");
print("Eleccion3: Modificar un registro");
print("Eleccion4: Borrar un registro");
print("Eleccion5:Salir");
print("\nEscribe la eleccion que deseas ejecutar: ");
String eleccion = stdin.readLineSync();
if (eleccion == "Mostrar"){print(datos);}
else if (eleccion == "Insertar"){insertar(datos);}
else if (eleccion == "Modificar"){modificar(datos);}
else if (eleccion == "Borrar"){eliminar(datos);}
else if (eleccion == "Salir"){break;}
 }
}
void insertar(datos)
{
print("Introduce tu nombre: ");
String nombre = stdin.readLineSync();
print("Introduce tu numero: ");
int numero = int.parse(stdin.readLineSync());
print("Introduce tu correo: ");
String correo = stdin.readLineSync();
datos["TuNombre"] = nombre;
datos["TuNumero"] = numero;
datos["TuCorreo"] = correo;
print(datos);
}
void modificar(datos)
{

print("Intruduce tu nombre para modificarlo: ");
String nombre1 = stdin.readLineSync();
print("Introduce tu  numero para modificarlo: ");
int numero1 = int.parse(stdin.readLineSync());
print("Introduce tu correo para modificarlo:");
String correo1 = stdin.readLineSync();
print("Introduce tu nuevo nombre para actualizarlo");
String new_nombre = stdin.readLineSync();
print("Introduce tu nuevo numero para actuaizarlo");
int new_numero = int.parse(stdin.readLineSync());
print("Introduce tu nuevo correo para actualizarlo");
String new_correo = stdin.readLineSync();
datos["TuNombre"] = new_nombre;
datos["TuNumero"] = new_numero;
datos["TuCorreo"] = new_correo;
print(datos);
}
void eliminar(datos)
{

print("Introduce tu nombre para borrarlo: ");
String detele_nombre = stdin.readLineSync();
print("Intruduce tu numero para borrarlo: ");
int delete_numero = int.parse(stdin.readLineSync());
print("Introduce tu correo para borrarlo: ");
String delete_correo = stdin.readLineSync();
datos["TuNombre"] = null; 
datos["TuNumero"] = null;
datos["TuCorreo"] = null;
print(datos);
}

