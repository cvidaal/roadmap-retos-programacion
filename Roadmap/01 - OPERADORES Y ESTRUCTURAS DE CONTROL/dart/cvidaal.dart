
void main(){

// * - Crea ejemplos utilizando todos los tipos de operadores de tu lenguaje:
// Operadores Aritmeticos (+ - * / %)
print('Operadores Aritmeticos');
int suma = 10 + 1; // 11
print(suma);
int resta = 10 - 1; // 9
print(resta);
int negacion = -10; // -10
print(negacion);
int multiplicar = 10 * 10; // 100
print(multiplicar);
double dividir = 10 / 2; // 5
print(dividir);
int divisionEntero = 10 ~/ 2; // 5  <-- Devuelve un resultado entero.
print(divisionEntero);
int resto = 10 % 2; // 0 // <-- Devuelve el resto de una división.
print(resto);

// Operadores de incremento y decremento (++ --)
int a = 1;
int b = 2;

print('Operadores incremento y decremento');
a++; // a + 1;
print(a);
a--; // a - 1;
print(a);
++a; // a + 1;
print(a);
--a; // a - 1
print(a);

// Operadores de igualdad y relacionales (>, <, >=, <=, ==, !=)
// Devuelven true o false
int? c = 1;
int d = 2;

print('Operadores de igualdad y relacionales');
c == d; // false // igual
print(c);
c != d; // true // diferente de
print(c);
c > d; // false // mayor q
print(c);
c < d; // true // menor q
print(c);
c >= d; // false;
print(c);
c <= d; // false;
print(c);

print('Operadores Asignación');
// Operadores de asignación (+=, -=, *=, /=)
double e = 3.2;
c+= 3; // Se le suma 3 al valor de c // 4
print(c);
c -= 4; // Se le resta 4 al valor de c // 0
print(c);
c *= 3; // multiplica 3 al valor de c
print(c);
c ^= 3; // Elevado a 3
print(c);
e /= 3; 
print(e);

// Operadores Lógicos

print('Operadores Lógicos (AND Y OR)');
int edad = 20;

// Operador OR (||)
if (edad == 18 || edad == 20){
  print('Tienes entre 18 o 20');
};

int edad2 = 14;
int amigos = 5;

// Operador AND (&&)
if (edad2 >= 18 && amigos == 5){
  print('Puedes pasar');
} else{
  print('No puedes pasar');
}

// Expresiones Condicionales
print('Expresiones condicionales');
bool isPublic = true;
var visibility = isPublic ? 'publico' : 'privado';
print('Es Publico? $visibility');

// Notación en cascada
// <-- Permiten realizar una secuencia de operaciones sobre el mismo objeto

// var paint = Paint()
//   ..color = Colors.black
//   ..strokeCap = StrokeCap.round
//   ..strokeWidth = 5.0;

//TODO: Hacer condicionales, iterativas, excepciones

int edadComunion = 8;

// Condicionales

if (edadComunion > 9){
  print('Has hecho la comunión');
} else if (edadComunion < 9 && edadComunion > 0){
  print('Todavía no la has hecho');
} else {
  print('Tranquilo, ya naceras');
}

// iterativas

//switch 
String dia = 'Viernes';

 switch(dia){
  case 'Lunes':
    print('Clase');
    break;
  case 'Martes':
    print('Clase');
    break;
  case 'Miercoles':
    print('Clase después del recreo');
    break;
  case 'Jueves':
    print('Clase a medias');
    break;
  case 'Viernes':
    print('No clase');
    break;
  default: 'El día debe ser de Lunes a Viernes';
 }

//for
for (int i=0; i<=5; i++){
  print('For: ${i}');
}

//while
int i = 0;
while(i < 5){
  print('While: $i');
  i++;
}

// Do While
int x = 1;
do {
  x++;
  print('Do While: $x');
} while(x <= 10);

// for-in
List<int> numeros = [1, 2, 3, 4, 9, 10, 11];
for (int numero in numeros){
  print('For In: $numero');
}

// forEach una forma funconal de recorrer colecciones
var list = [1, 2, 3, 4, 5, 6];
list.forEach((element) => print('forEach: $element'),);

// Try Catch
int sumar(int a, int b){
  return a + b;
}
try {
  print('Desde try Catch: ${sumar(20, 30)}');
} catch(e){
  print(e);
} finally{
  print('Ha finalizado la operación');
}                                                                                         
//* Excepciones
// throw FormatException('Excepcion forzada');

// * DIFICULTAD EXTRA (opcional):
//  * Crea un programa que imprima por consola todos los números comprendidos
//  * entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.
//  *
for (int i = 10; i<=55; i++){
  if ((i == 16) || (i%2 != 0) || (i%3 == 0) ){
    continue; // <-- Esto hace que no se imprimaz
  }
  print(i);
}

}
                