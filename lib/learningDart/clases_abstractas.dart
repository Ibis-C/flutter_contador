/*
Una clase abstracta es una clase que no se puede instanciar. Esto obliga a otras clases que tengan los métodos que se esperan para su funcionamiento.
 */
void main() {
  final perro = new Perro();
  sonidoAnimal(perro);

  final gato = new Gato();
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

abstract class Animal {
  int? patas;

  // Animal();

  void emitirSonido();
}

class Perro implements Animal {
  @override
  int? patas;

  @override
  void emitirSonido() => print('Guau, Guau'); //metodo corto
}

class Gato implements Animal {
  @override
  int? patas;
  int? cola;

  @override
  void emitirSonido() => print('Miau');
}
