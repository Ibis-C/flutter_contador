abstract class Animal {} // caracteristicas comunes de los animales

abstract class Mamifero
    extends Animal {} // caracteristicas unicas de los mamiferos

abstract class Ave extends Animal {} // caracteristicas unicas de las aves

abstract class Pez extends Animal {} // caracteristicas unicas de los peces

mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = new Delfin();
  flipper.nadar();

  final batman = new Murcielago();
  batman.caminar();
  batman.volar();
}
