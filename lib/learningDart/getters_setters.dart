import 'dart:math';

void main() {
  final cuadrado = new Cuadrado(5);

  cuadrado.area = 25;

  print('area: ${cuadrado.lado * cuadrado.lado}');
  print('area: ${cuadrado.calcularArea()}');
  print('area get: ${cuadrado.area}');
}

class Cuadrado {
  double lado;

  double get area {
    return this.lado * this.lado;
  }

  set area(double valor) {
    this.lado = sqrt(valor);
  }

  Cuadrado(double lado) : this.lado = lado;

  calcularArea() {
    return this.lado * this.lado;
  }
}
