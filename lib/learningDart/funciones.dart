/**
 * Funciones. Bloque de código de podemos ejecutar para muchas razones.
 */

//Buena practica siempre indicar el tipo de retorno
void main() {
  final nombre = 'Ibis';
  saludar(nombre);
  llamar();
  saludar2(nombre);
  saludar2(nombre, 'Bienvenido');
  Bienvenida(mensaje: 'Bienvenid@', nombre: 'Ale');
  Bienvenida2(nombre: 'Yo', mensaje: 'Welcome');
}

void saludar(String nombre) {
  print("Hola $nombre");
}

//Indicar un argumento por defecto si no se le pasa ningun argumento a la función
void llamar([String nombre = "No name"]) {
  print('Llamando a $nombre');
}

//Dart permite muchas formas de mandar argumentos.

void saludar2(String nombre, [String mensaje = 'Hola']) {
  print('$mensaje $nombre');
}

//La declaración de los argumentos de la siguiente manera, nos permite indicar que valor queremos enviar al usar la función
void Bienvenida({String nombre = 'Sin nombre', String? mensaje}) {
  print('$mensaje $nombre');
}

//Indicar a la función que mis argumentos necesariamente deben tener un valor. Usar required, ahora con esto, siempre que alguien quiera usar la función, tendrá que enviar el nombre y mensaje

void Bienvenida2({required String nombre, required String mensaje}) {
  print('$mensaje $nombre');
}
