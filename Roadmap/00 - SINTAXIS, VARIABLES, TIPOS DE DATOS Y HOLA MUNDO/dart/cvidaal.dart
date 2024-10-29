
// Sitio web de dart: https://dart.dev/

/* Comentario 
en diferentes líneas */

// Comentario en una sola línea

void main(){
//  * - Crea una variable (y una constante si el lenguaje lo soporta).
String nombre = 'Carlos';
const edad = 22;

// * - Crea variables representando todos los tipos de datos primitivos
//  *   del lenguaje (cadenas de texto, enteros, booleanos...).

// Variables que su valor se iniciara mas tarde.
late String apellido; // <-- Si sabemos que una variable ya esta definida, pero su valor se iniciara más tarde usamos (late) 

// Variables que nunca cambian (const y late)
const int numero2 = 3; // <-- son constantes en tiempo de compilación.
final int numero3 = 4; // <-- Este valor nunca cambiara.

// Tipos de variables
String texto = 'Hola mundo';
int num = 1;
double numDecimal = 1.3;
bool esVerdad = false;

// Coleciones
List<int> edades = [3, 4, 5, 6, 7, 8];
Map<String, int> notas = {
  'Carlos': 10,
  'Sara': 5,
  'Maria': 3
};
Set nombres = <String>{'Carlos', 'Ramiro', 'Juan', 'Alfredo'}; // <-- Colecion desordenada de elementos únicos.

// * - Imprime por terminal el texto: "¡Hola, [y el nombre de tu lenguaje]!"
String saludo = "Hola Dart!!!";
print(saludo);

}

