
import 'raulfauli.dart';

void main(){

  //* EJERCICIO RECURSIVIDAD;
  // Es una función que se llama a ella misma y se ejecuta más de una vez.
  //countDown(100);

  //* EXTRA
  print(factorial(6));

  print(fibonacci(12));

}

// Función recursiva
void countDown(int contador){
  if(contador >= 0){
    print(contador); // Muestra el número
    countDown(contador - 1); // Se llama a si misma para restar.
  }
}

//  * DIFICULTAD EXTRA (opcional):
//  * Utiliza el concepto de recursividad para:
//  * - Calcular el factorial de un número concreto (la función recibe ese número).
//  * - Calcular el valor de un elemento concreto (según su posición) en la 
//  *   sucesión de Fibonacci (la función recibe la posición).

factorial(int numero){
  if(numero == 0){
    return 1;
  } else if(numero < 0){
    print('El número no puede ser negativo');
  } else {
    return numero * factorial(numero-1);
  }
}

fibonacci(int posicion){
  if(posicion <= 1){
    return 1;
  } else{
    return(fibonacci(posicion-1) + fibonacci(posicion-2));
  }
}
