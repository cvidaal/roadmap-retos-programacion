// EJERCICIO:
//  * - Muestra ejemplos de creación de todas las estructuras soportadas por defecto
//  *   en tu lenguaje.
//  * - Utiliza operaciones de inserción, borrado, actualización y ordenación.


import 'dart:io';

void main(){

  // // En Dart existen diferentes estructuras de datos soportadas
  // // List, Map, Set <-- Todas estas tienen en común que pueden recoger diferentes estilos de datos

  // //* Listas
  // List<String> alumnos = ['Pedro', 'Fernando', 'Juan', 'Lucia', 'Carlos'];

  // // Acceder a un elemento
  // print(alumnos[0]); // Pedro

  // //Añadir a la lista
  // alumnos.add('Eulices'); // <-- Agregamos un nuevo alumno

  // //Añadir múltiples datos
  // alumnos.addAll(['Pepe', 'Francisco']); // <-- Se añaden tantos como pongas.

  // //Eliminar un elemento
  // var alumnoEliminado = alumnos.indexOf('Pepe'); // <-- IndexOf busca en la lista (por nombre, posición...) y retorna la posición
  // print(alumnoEliminado); // 6
  // alumnos.removeAt(alumnoEliminado); // <-- Se elimina Pepe (es de tipo int porque devuelve la posición)

  // // Eliminar todos los elementos
  // //!alumnos.clear(); // <-- Vacía la lista
  
  // // Ordenar los elementos
  // alumnos.sort();// Los ordena por orden alfacebeitoc si son string y sino de menor a mayor
  // alumnos.sort((a, b) => a.length.compareTo(b.length),); // Los ordena según su longitud de caracteres

  // print(alumnos);

  // //* Sets
  // // Los sets no permiten que se repitan valores
  // Set numeros = {2, 3, 4, 'Pepe', 'Carlos', 10, 11, 12.3, 145, true, false}; // <-- Los sets pueden almacenar cualquier tipo de datos
  
  // // Añadir nuevo item
  // numeros.add(100);

  // // Añadir más de 1 item
  // numeros.addAll([50, 'Marta', false]);

  // // Eliminar un item
  // numeros.remove('Carlos');

  // //Set.from(numeros); // <-- Constructor para crear Sets.

  // // Saber si contiene un valor
  // print(numeros.contains('Pepe')); // true

  // print(numeros.containsAll(['Pepe', 3, 4, 30])); // false el 30 no esta.

  // print(numeros);

  // //* Maps

  // // Un mapa funciona del modo key : value
  // Map<String, dynamic> asignaturas = {
  //   'Programacion' : [9, 2, 4, 5, 6, 8],
  //   'Desarrollo Interfaces': [3, 4, 5, 1, 2, 9],
  //   'Empresas': [10, 9, 8, 8, 5, 6],
  //   'Programacion de Servicios': [3, 4, 1, 2, 10, 10],
  //   'No presentado' : 2
  // };

  // // Agregar una clave
  // asignaturas['Sistemas de gestión'] = [1, 0, 9, 5, 3, 2];
  // asignaturas['Presentado'] = 30;

  // // Eliminar elemento
  // asignaturas.remove('Presentado');

  // // Limpiar el mapa
  // //asignaturas.clear();

  // // Verificar si contiene una clave o valor
  // print(asignaturas.containsKey('No presentado')); // true
  // print(asignaturas.containsValue(1)); // true

  // //Obtener el valor de una clave 
  // var noPresentados = asignaturas['No presentado']; // No Presentados
  // print('Hay $noPresentados No presentados');

  // //Obtener el número de elementos
  // asignaturas.length;

  // // Recorrer un mapa
  // asignaturas.forEach((key, value) {
  //   if(key == 'No presentado') return;
  //   print('En $key se han sacado las siguientes notas $value ');
  // },);

  // for(var entries in asignaturas.entries){
  //   print('{${entries.key} se han sacado las siguientes notas ${entries.value}');
  // }

  // print(asignaturas);

//    * DIFICULTAD EXTRA (opcional):
//  * Crea una agenda de contactos por terminal.
//  * - Debes implementar funcionalidades de búsqueda, inserción, actualización
//  *   y eliminación de contactos.
//  * - Cada contacto debe tener un nombre y un número de teléfono.
//  * - El programa solicita en primer lugar cuál es la operación que se quiere realizar,
//  *   y a continuación los datos necesarios para llevarla a cabo.
//  * - El programa no puede dejar introducir números de teléfono no númericos y con más
//  *   de 11 dígitos (o el número de dígitos que quieras).
//  * - También se debe proponer una operación de finalización del programa.

menu();

}


void menu(){
int? opcion;
Map<String, String> contactos = {};

  do{
    print('''
      Elige una de las siguientes opciones
      ------------------------------------
      1. Añadir nuevo contacto
      2. Buscar contacto
      3. Eliminar contacto
      4. Listar contactos
      5. Actualizar contacto
      6. Salir
      ------------------------------------
      Gracias por usar la aplicación.
    ''');

    opcion = int.tryParse(stdin.readLineSync()!); // <-- Sirve para leer el valor introducido por el usuario

  switch(opcion){
    case 1:
      agregarContacto(contactos);
      break;
    case 2:
      buscarContacto(contactos);
      break;
    
    case 3:
      eliminarContacto(contactos);
      break;
    
    case 4:
      listarContactos(contactos);
      break;

    case 5: 
      actualizarContacto(contactos);
      break;
    case 6:
      print('Gracias por utilizar nuestra agenda de contactos');
      break;
    
    default: 'Elige una opción entre 1 y 5';
  }
  } while(opcion != 6);
}

agregarContacto(Map<String, String> contactos){
  String? nombre;
  String? telefono;

  stdout.writeln('Nombre: ');
  nombre = stdin.readLineSync();

  stdout.writeln('Teléfono: ');
  telefono = stdin.readLineSync();
  
  contactos.addAll({nombre! : telefono!});
}

buscarContacto(Map<String, String> contactos){
  String? nombre;
  print('Nombre del contacto que buscas: ');
  nombre = stdin.readLineSync();

  contactos.forEach((key, value) {
    if(key == nombre){
      print('Contacto encontrado');
      print('Nombre: $key, Telefono $value');
    } else{
      print('El contacto no existe');
    }
  },);
  
}

eliminarContacto(Map<String, String> contactos){
  String? nombre;
  print('Nombre del contacto a eliminar: ');
  nombre = stdin.readLineSync();

  if(nombre != null && contactos.containsKey(nombre)){
    contactos.remove(nombre);
    print('Contacto eliminado');
  } else{
    print('El contacto no existe o ya fue eliminado');
  }
}

listarContactos(Map<String, String> contactos){
  contactos.forEach((key, value) {
    print('Nombre: $key, Teléfono: $value');
  } ,);
}

actualizarContacto(Map<String, String> contactos){

  print('Nombre del contacto a actualizar: ');
  String? nombre = stdin.readLineSync();

  if(nombre!=null && contactos.containsKey(nombre)){
    print('Nuevo número del contacto: ');
    String? nuevoNumero = stdin.readLineSync();

    if(nuevoNumero != null){
      contactos[nombre] = nuevoNumero;
      print('Contacto actualizado');
    } else{
      print('No se proporciono información');
    }
  } else{
    print('El contacto no existe');
  }
}