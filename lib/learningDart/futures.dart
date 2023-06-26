/**
Futures: es una tarea asincrona. Una tarea que se ejecutara a diferente tiempo de nuestra aplicación.
 */

void main() {
  print('Antes de la petición');

  httpGet('https://api.nasa.com/aliens').then((data) {
    print(data);
  });

  //Al saber que tipo de dato me va a regresar el future y al haberselo indicado, podemos hacer uso de las metodos y propiedas del tipo de dato. Ejemplo en este caso nos regresa un String:
  httpGet('https://api.nasa.com/aliens').then((data) {
    print(data.toUpperCase()); //usamos toLowerCase
  });

  print('Fin del programa');
}

// El Future puede regresar cualquier colsa Future<dynamic>. Idealmente, si nosotros sabemos que dato regresa el Future es bueno indicarlo. Future<String>
Future<String> httpGet(String url) {
  // .delayed == metodo estatica de los Futures que permite hacer una tarea asincrona en tanta cantidad de tiempo(el tiempo se especifica con la clase Duration)
  return Future.delayed(Duration(seconds: 3),
      () => 'Hola mundo 3 segundos'); //forma corta de escribirlo
  // forma larga: return Future.delayed(Duration(second:3), () {return 'Hola mundo 3 segundos';});
}
