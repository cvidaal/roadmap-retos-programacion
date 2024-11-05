import '../../00 - SINTAXIS, VARIABLES, TIPOS DE DATOS Y HOLA MUNDO/dart/evelynnobile.dart';

void main() {
  Programador programador = Programador('Carlos', 20, 'Dart');
  Programador programadorSinLenguaje = Programador.sinLenguaje('Juan', 22);
  programadorSinLenguaje.printProgrammer();

  final pila = Pila();
  pila.add(1);
  pila.add(2);
  pila.add(3);

  pila.imprimirAll();
  pila.remove();
  pila.imprimirAll();
  pila.returnPila();

  final nombres = Cola();
  nombres.add('Carlos');
  nombres.add('Juan');
  nombres.add('Roberto');

  nombres.imprimirAll();
  nombres.remove();
  nombres.returnCola();

  nombres.imprimirAll();
}

class Programador {
  // Propiedades
  static const nombreEmpresa = 'ProgramadorWWW';
  String nombre;
  int _edad = 0; // Atributo privado
  String? lenguaje = 'Dart';

  // Constructor
  Programador(this.nombre, this._edad, this.lenguaje);
  // Constructor con nombre
  Programador.sinLenguaje(this.nombre, this._edad, {this.lenguaje});

  //Getters and Setters
  int get edad => _edad;

  set edad(int value) {
    _edad = value;
  }

  // Métodos
  void printProgrammer() {
    print('Nombre: $nombre, edad: $_edad, lenguaje: $lenguaje');
  }

  // Método privado
  int _obtenerEdad(int edad) {
    return edad;
  }

  // Método Estático
  static void imprimirLenguaje() {
    print('Lenguaje: $lenguage');
  }
}

class Pila {
  List<int> _pila = [];

  void add(int value) {
    _pila.add(value);
  }

  void remove() {
    _pila.removeLast();
  }

  void imprimirAll() {
    print(_pila);
  }

  void returnPila() {
    print('La lista tiene ${_pila.length} elementos');
  }
}

class Cola {
  List<String> nombres = [];

  void add(String nombre) {
    nombres.add(nombre);
  }

  void remove() {
    if (nombres.isNotEmpty) {
      nombres.removeAt(0);
    } else {
      print('La lista esta vacía');
    }
  }

  void imprimirAll() {
    if (nombres.isNotEmpty) {
      print(nombres);
    } else {
      print('La lista esta vacía');
    }
  }
  
  String returnCola(){
    return 'Hay ${nombres.length} en la lista';
  }
}
