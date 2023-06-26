/**
 * Colección de elementos que tienen algun tipo de dato en común
 */
void main() {
  List<int> numeros = [
    1,
    2,
    3,
    4,
    5
  ]; //No puede contener un valor null, al menos que lo coloquemos de la siguiente manera List?

  numeros.add(6);
  print(numeros[0]);

  /**
   * Metodos estaticos. Funcion que yo puedo llamar sin crear una instancia de la misma
   */
  // Metodo estatico List.generate(*cantidad de elmentos en la lista*, (*tipoDato* *nombreDato*) => datoGuardado)
  final masNumeros = List.generate(10, (int index) => index);
}
