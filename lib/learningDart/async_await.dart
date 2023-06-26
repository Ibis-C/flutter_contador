void main() async {
  print('Antes de la petición');

  /* httpGet('https://api.nasa.com/aliens').then((data) {
    print(data.toUpperCase());
  }); */
  final data = await httpGet('https://api.nasa.com/aliens');
  print(
      data); //Resultdo = Antes de la peticion\n *esperar 3 segundos* Hola mundo - 3 segundos\n Fin del programa

// Inicio async: esto se ejecuta al final del programa, en otra pila y espera a que ya no haya ningun proceso para ejecutarse.
  print(getNombre(
      '10')); // Lo que nos imprime es el retorno del Future == Instance of '_Future<String>
  getNombre('10')
      .then(print); // == getNombre('10').then( (data) => print(data));
// Fin async.

// Inicio await: esperar a tener una respuesta antes de seguir con la siguiente acción del programa.
  final nombre = await getNombre(
      '10'); // Erro en await porque tenemos que encontrarnos en una fucnion asincrona, y main() no es una funcion asincrona. Para solucionarlo podemos convertir el main() en una función asincrona.
  print(nombre);

  print('Fin del programa');
}

/* 
--- El String marca un error porque al tener el async esto significa que la funcion retorna un Future por defecto, entonce el Future != String

  String getNombre(String id) async {
    return '$id - Fernando';
  } 

*/
Future<String> getNombre(String id) async {
  //Forma correcta
  return '$id - Fernando';
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () => 'Hola mundo 3 segundos');
}
