/* Introducción y variables en Dart
* ¿Porqué dart?
Dart compila a código nativo. AOT(Ahead Of Time)
Es JIT (Just In Time), incluyendo el popular Hot Reload.
Relativamente fácil de aprender
*/

// función de ejecución del código
void main() {
  //tipo de datos
  var nombre =
      "Isaí"; // variable de tipo dinamico(puede almacenar cualquier cosa). NO RECOMENDABLE USAR
  String name = 'Ibis'; // variable de tipo String(cadena de textos)

  /**
   * Diferencias entre final y const
   * const = una constante nunca va a cambiar su valor en tiempo de compilación. 
   * final = se mantiene igual desde su primera asignación.
   */
  final String apellidoP = 'Carrillo';
  const String apellidoM = 'Araujo';

  int empleados = 10;
  double salarioMinimo = 224.35;

  print('Los $empleados empleados ganan $salarioMinimo al día');

  // bool isActive = null; //variable de tipo booleana
  // NULL SAFETY == dart ayuda a los errores que te puede salir si tu variable recibe una variable null
  // pero ¿comó agrego un valor número a una variable si no se su dato.
  bool? isActive = null;
  // se le indica a dart que una variable puede contener un valor nulo al poner un signo de pregunta a lado del tipo de dato de nuestra variable

  if (isActive != null) {
    print('Esta activo');
  } else {
    print('Esta inactivo');
  }
}
