


import 'dart:io';

void main(){

// //* Muestra ejemplos de cadenas de caracteres en Dart

String nombre = 'Carlos me has puesto de mala leche durante la comida';

//* Buscar dentro de una cadena.

// El string contiene la palabra (has)
print(nombre.contains('has')); //true

// Empieza con la palabra Carlos
print(nombre.startsWith('Carlos')); // true

// Termina con la palabra
print(nombre.endsWith('hola')); // false (termina con comida)

// En que posición se encuentra la palabra buscada
print(nombre.indexOf('mala')); // puesto 24.

//* Extraer datos de una cadena

// Coger una subcadena (start, cuenta a partir de el 6 o sea contaría el 7)
print(nombre.substring(6, 16)); // me has pu

// Dividir una cadena utilizando un patrón
List<String> cadenaPartes = nombre.split(' '); // <-- Sirve para sacar todas las palabras separadas por espacio 
print(cadenaPartes); // Mapa con las cadenas de caracteres
print(cadenaPartes[0]); // Carlos

// Obtener una únidad de caracter como String
print(nombre[0]); // Muestra C

// Obtener todos los caracteres en un bucle
for(var caracter in nombre.split('')){
  //print(caracter); // Saca cada uno de los caracteres de 1 en 1 en líneas diferentes.
}

// Obtener todos los caracteres UTF-16 de un string
var ListaCodigo = nombre.codeUnits.toList();
// print(ListaCodigo); // Devuelve una Lista con el código UTF-16 de cada caracter.

//* Convertir en mayúsculas y minúsculas

// Mayúsculas
print('juanillo el pillo'.toUpperCase()); // JUANILLO EL

// Minúsculas
print('JUANILLO EL PILLO 2.0'.toLowerCase()); // juanillo el pillo 2.0

//* Recortes y String vacios

// Quitar espacios de un string
print('  pepe  '.trim()); // (pepe)

// Verificar si un string esta vacío
print(''.isEmpty); // true

// Verificar si uns tring no esta vacío
print(' '.isNotEmpty); // true -> el espacio tambien cuenta como caracter

//* Remplazar parte de una cadena
String saludar = 'Hola mundo de Talavera';
print(saludar);

// Remplaza una cadena por otra
var saludo2 = saludar.replaceAll('Talavera', 'Madrid'.toUpperCase()); // Hola mundo de Madrid
print(saludo2);

print(saludo2 != saludar); // true

//* Construyendo una cadena

// Utilizando StringBuffer
var nuevaCadena = StringBuffer(); 
nuevaCadena
  ..write('Usando un StringBuffer ')
  ..writeAll(['eficiente', 'rapido', 'seguro'], ' ')
  ..write('.');

String convertirString = nuevaCadena.toString();
print(convertirString);

//* Expresiones Regulares
RegExp numeros = RegExp(r'\d+'); // Expresión regular que bsusca 1 o más difitos
String algunosNumeros = 'Las llamas viven entre 15 o 20 años';

// Verificar si la cadena tiene números con reg
print(numeros.hasMatch(algunosNumeros)); // true 

// iterar sobre todos los números encontrados
for(final match in numeros.allMatches(algunosNumeros)){
  print(match.group(0)); // 15 y 20
}


//  * DIFICULTAD EXTRA (opcional):
//  * Crea un programa que analice dos palabras diferentes y realice comprobaciones
//  * para descubrir si son:
//  * - Palíndromos
//  * - Anagramas
//  * - Isogramas

verificarPalabras();
}

verificarPalabras(){
  print('Dime una palabra: ');
  String? palabra1 = stdin.readLineSync()?.toLowerCase();
  List<String> palabra1Split = palabra1!.split('').toList();
  
  print('¿Es un anagrama? ${esAnagrama(palabra1Split)}');
  print('¿Es $palabra1 un Isograma? ${esIsograma(palabra1Split)}');
  print('¿Es $palabra1 palíndromo? ${esPalindromo(palabra1Split)}');

}

bool? esPalindromo(List<String> palabras){
  // Una palabra que se lee igual del derecho que del reves
  // <-- join() une las palabras de una lista
  if(palabras.join() == palabras.reversed.join()){ // <-- reversed devuelve la palabra al reves
    return true;
  } else{
    return false;
  }
}

bool? esAnagrama(List<String> palabras){
  print('Dime otra palabra: ');
  String? palabra2 = stdin.readLineSync()!.toLowerCase();
  List palabra2Split = palabra2.split('').toList();
  
  palabras.sort();
  palabra2Split.sort();

  if(palabras.join() == palabra2Split.join()){ // Hay que unir las palabras para ver si son iguales
    return true;
  } else{
    return false;
  }
}

bool? esIsograma(List<String> palabras){
  // Un Isograma es una palabra o frase en la que ninguna letra aparece más de una vez
  for(int i = 0; i<palabras.length - 1; i++){
    for(int j = i + 1; j<palabras.length; j++){
      if(palabras[i] == palabras[j]){
        return false;
      }
    }
  }
    return true;
}



