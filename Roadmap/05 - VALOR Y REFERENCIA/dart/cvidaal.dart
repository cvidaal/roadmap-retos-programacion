//* VALOR Y REFERENCIA

import '../../00 - SINTAXIS, VARIABLES, TIPOS DE DATOS Y HOLA MUNDO/dart/evelynnobile.dart';

void main(){
  
  //* Por Valor: <- Significa que cuando asignas una variable por valor, es una copia del dato original.
  // Cualquier cambio en esa copia no afecta al dato original

  // Lo que pasa es que a se guarda en un lugar de memoria y b en otro entonces no cambian

  // int,double,bool... son pasados por valor.

  int a = 10; // Variable por valor a
  int b = a; // Copia de a
  b = 20; // Cambio en b
  print(a); // 10
  print(b); // 20

  //* Por Referencia: <-- Significa que apunta directamente a la misma referencia en memoria
  // Si cambias algo en dato original también se modifica.
  // List, Maps, Class... se pasan por referencia

  // En las listas cada lista se guarda en memoria pero cuando decimos list2 = list1 entonces list2 pasa al hueco de memoria de list1.

  List<int> list1 = [1, 2, 3];
  List<int> list2 = list1; // Es una copia de list1 pero se modifica si la modificamos
  list2[0] = 10;

  print('list1: $list1, list2: $list2');
  // list1 = 10, 2, 3
  // list2 = 10, 2, 3

  //* Prueba con funciones
  int x = 10;
  List<String> nombres = ['Carlos', 'Juan', 'Rober'];

  cambiarNumero(x); // El número sigue valiendo 10
  cambiarLista(nombres); // Los nombres se cambian a [Jose María, Juan, Rober]

  print(x); 
  print(nombres);

  //* EXTRA
  var resultadoCambiarPalabras = cambiarPalabras(palabra1, palabra2);
  String palabraCambio1 = resultadoCambiarPalabras[0];
  String palabraCambio2 = resultadoCambiarPalabras[1];

  // Conseguimos cambiar los valores de una y de otra.
  print('$palabra1, $palabra2, $palabraCambio1, $palabraCambio2'); // Gafas, Vaselina, Vaselina, Gafas

  var resultadoCambiarListas = cambiarListas(numeros1, numeros2);
  List<int> listaCambio1 = resultadoCambiarListas[0];
  List<int> listaCambio2 = resultadoCambiarListas[1];

  // Conseguimos cambiar los valores de una y de otra.
  print('$numeros1, $numeros2, $listaCambio1, $listaCambio2'); // [1, 2, 3, 4], [10, 23, 34, 50], [10, 23, 34, 50], [1, 2, 3, 4]

}

void cambiarNumero(int num){
  num = 100;
}

void cambiarLista(List<String> nombres){
  nombres[0] = 'Jose María';

  cambiarPalabras(palabra1, palabra2);
}

//* Dificultad Extra

// Por valor
String palabra1 = 'Gafas';
String palabra2 = 'Vaselina';

cambiarPalabras(String palabra1, String palabra2){
  String auxiliar;
  auxiliar = palabra1;
  palabra1 = palabra2;
  palabra2 = auxiliar;

  return [palabra1, palabra2];
}

List<int> numeros1 = [1, 2, 3, 4];
List<int> numeros2 = [10, 23, 34, 50];

cambiarListas(List<int> numeros1, List<int> numeros2){
  List<int> auxiliar;
  auxiliar = numeros1;
  numeros1 = numeros2;
  numeros2 = auxiliar;

  return [numeros1, numeros2];
}
