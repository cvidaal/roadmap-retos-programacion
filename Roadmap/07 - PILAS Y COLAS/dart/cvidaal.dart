
import 'dart:io';
import 'dart:math';

void main(){
//  * EJERCICIO:
//  * Implementa los mecanismos de introducción y recuperación de elementos propios de las
//  * pilas (stacks - LIFO) y las colas (queue - FIFO) utilizando una estructura de array
//  * o lista (dependiendo de las posibilidades de tu lenguaje)

// Una Pila es la acción de apilar cosas, como unos platos según vas terminando de lavar.
// LIFO (Last in First Out) Ultimo en entrar, primero en salir
apilando(); // sale el 3

// Una cola (First int First Out) Primero en entrar, primero en salir
enqueue();

//* Dificultad Extra
//* simula el mecanismo adelante/atrás
//  *   de un navegador web. Crea un programa en el que puedas navegar a una página o indicarle
//  *   que te quieres desplazar adelante o atrás, mostrando en cada caso el nombre de la web.
//  *   Las palabras "adelante", "atrás" desencadenan esta acción, el resto se interpreta como
//  *   el nombre de una nueva web.
//webNavigation();

//  * - Utilizando la implementación de cola y cadenas de texto, simula el mecanismo de una
//  *   impresora compartida que recibe documentos y los imprime cuando así se le indica.
//  *   La palabra "imprimir" imprime un elemento de la cola, el resto de palabras se
//  *   interpretan como nombres de documentos.
impresora();
}

void apilando(){
  List<int> pilas = [];

  //push
  pilas.add(1); // [1]
  pilas.add(2); // [1, 2]
  pilas.add(3); // [1, 2, 3]
  print(pilas);

  //pop
  pilas.removeLast(); // 3
  print(pilas); // [1, 2]
}

void enqueue(){
  List<int> colas = [];

  // enqueue
  colas.add(1); // [1]
  colas.add(2); // [1,2]
  colas.add(3); // [1,2,3]
  print(colas);

  // dequeue
  colas.removeAt(0); // 1
  print(colas); // [2, 3]

}

// Web
void webNavigation(){
  List<String> web = [];
  List<String> historial = [];
  List<String> futuro = [];

  String? opcion;
  do{
    print('''Elige una opción para navegar
    - S: Añade una url para navegar
    - H: Historial
    - A: Volve hacia atras.
    - D: Ir Hacia delante
    - Q: Salir 
    ''');
  opcion = stdin.readLineSync()?.toUpperCase();
  switch(opcion){
    case 'S':

      print('url: ');
      String? url;
      url = stdin.readLineSync();
      web.add(url!);
      historial.add(url);
      futuro.clear();
      print('Estas navegando a $url');
      break;

    case 'H':
      print(historial);
      break;
    
    case 'A':
      print('Volviendo hacia atras');
      if(historial.isNotEmpty){
        String ultimaUrl = historial.removeLast();
        futuro.add(ultimaUrl);
        print('Volviendo hacia atrás: $ultimaUrl');
      } else{
        print('No hay historial para ir hacia átras');
      }
      break;

    case 'D':
      if(futuro.isNotEmpty){
        String siguienteUrl = futuro.removeLast();
        historial.add(siguienteUrl);
        print('Yendo a $siguienteUrl');
      } else{
        print('No hay páginas para ir hacia delante');
      }
      break;
    
    case 'Q':
      print('Saliendo...');
      break;
    
    default: print('Elige una opción valida');
  }
  }while(opcion != 'Q');    
}

void impresora(){
  List<String> colaImpresora = [];


  String opcion;
  do{
  print('Añade un documento o selecciona imprimir/salir: ');
  opcion = stdin.readLineSync()!.toLowerCase();
  switch(opcion){
    case 'imprimir':
      if(colaImpresora.isNotEmpty){
        print('Imprimiento $colaImpresora');
        colaImpresora.clear();
      } else{
        print('Añade documentos a la cola de impresión');
      }
      break;
    
    case 'salir':
      print('Saliendo...');
      break;
    
    default:
      colaImpresora.add(opcion);
      print('Documentos en cola $colaImpresora');
      break;
  }
  } while(opcion != 'salir');

}
