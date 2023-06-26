void main() {
  final superman = new Heroe('Clark Kent');
  final luthor = new Villano('Lex Luther');

  print(superman); //Resultado == Clark kent - null
}

abstract class Personaje {
  String?
      poder; //Puedo tomar el valor de nulo, ya que con el ? se lo permitimos.
  String nombre;

  Personaje(this.nombre);

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int valentia = 100;

  Heroe(String nombre)
      : super(
            nombre); //super llama al constructor de la clase padre y se le pasa el dato que esta resiviendo el constructor de la clase Heroe.
}

class Villano extends Personaje {
  int maldad = 50;

  Villano(String nombre) : super(nombre);
}
