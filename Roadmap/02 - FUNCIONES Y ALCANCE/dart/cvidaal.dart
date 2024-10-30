
// Variable global
String variableGlobal = 'Roberto'; // <-- Las variables globales se puede acceder desde cualquier parte del código.

// Funciones básicas
void main(){
  print('Valor de la variable global $variableGlobal');

  saludar();
  saludarConParametro('Carlos');
  sumar(num: 10, num2: 30); // <-- Función con parametros opcionales
  sumarDos();
  sumarTres(num: 20); // <-- Solo nos pide num porque es required
  print(multiplicar(20,20));
  print(factorial(10));
  dificultadExtra(cadena: 'Multiplo3', cadena2: 'Multiplo5');
}

//* Tipos de funciones

// Funciones sin parametros ni retorno
void saludar(){
  print('Hola Mundo');
}

// Función con parametros y sin retorno
void saludarConParametro(String nombre){
  print('Hola $nombre');
}

// Funciones dentro de funciones
void saludarDentroDeSaludar(nombre){
  void otroSaludo(){
    print('Saludar a $nombre');
  }

  otroSaludo();
}

// Funciones con parametros nombrados
void sumar({int? num, int? num2}){ // <-- Sus parametros son opcionales a no ser que pongas required
  print('Sumar: $num + $num2 = (${num!+num2!})');
}

// Parametros nombrados con valores por defecto
void sumarDos({int num = 0, int num2 = 3}){ // <-- Si el usuario no les da ningún valor saldran esto
  print('Sumar: $num + $num2 = (${num+num2})');
}


// Parametros nombrados con required
void sumarTres({required int num, int num2 = 2}){ // <-- Solo nos pedira el valor de num ya que es obligatorio
  print('Sumar: $num + $num2 = (${num+num2})');

}

int sumarCuatro(int a, {int b = 32}){
  return a + b;
}

// Función con retorno
int multiplicar(int a, int b){
  int resultado = a*b;
  return resultado;
}

// Función recursiva
int factorial(int n){ // <-- Son funciones que se llaman asi mismos.
  if (n <= 1){
    return 1;
  } else{
    return n * factorial(n-1);
  }
}

//  * DIFICULTAD EXTRA (opcional):
//  * Crea una función que reciba dos parámetros de tipo cadena de texto y retorne un número.
//  * - La función imprime todos los números del 1 al 100. Teniendo en cuenta que:
//  *   - Si el número es múltiplo de 3, muestra la cadena de texto del primer parámetro.
//  *   - Si el número es múltiplo de 5, muestra la cadena de texto del segundo parámetro.
//  *   - Si el número es múltiplo de 3 y de 5, muestra las dos cadenas de texto concatenadas.
//  *   - La función retorna el número de veces que se ha impreso el número en lugar de los textos.

int contador = 0;

int dificultadExtra({String cadena = 'Multiplo3', String cadena2 = 'Multiplo5'}){
  for (int i = 1; i<=100; i++){
    if((i%5 == 0) && (i%3 == 0)){
      print(cadena + cadena2);
    } else if((i%5 == 0)){
      print(cadena2);
    } else if((i%3 == 0)) {
      print(cadena);
    } else{
      contador++;
      print(i);
    }
  }
  return contador;
}