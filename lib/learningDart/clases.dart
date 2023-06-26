/*
Nos servirá mucho, porque todo en flutter son clases.
*/
void main() {
  final rawJson = {'nombre': 'Tony Stark', 'poder': 'Dinero'};

  // final ironman = new Heroe(nombre: nombre, poder: poder)

  final ironman = Heroe.fromJson(rawJson);
  print(ironman);

  // final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneración');
  // print(wolverine);
}

class Heroe {
  String nombre;
  String poder;

  //Tienen muchos tipos de constructores

  /*
  Bloque de codigo erroneo, ya que deben estar inicializados los argumentos:

    Heroe(String nombre, String poder) {
      this.nombre = nombre;
      this.poder = poder;
    }

  Aquí ya tenemos el código correcto:

    Heroe(this.nombre, this.poder);

  */

  //Pasar los argumentos por nombre y que obligatoriamente son necesarios
  Heroe({required this.nombre, required this.poder});

  /*
      Heroe.fromJson(Map<String, String> json) { //Necesita que los valores de la clase puedan ser nulos. Ya que lo valores en este punto ya se estan pasando porque la clase ya fue instanciada.
        this.nombre = json['nombre']!; //aseguramos a dart con ! que no sera null el dato
        this.poder = json['poder'] ?? 'No tiene poder'; // ?? si en dado caso no se le pasa ese valor, lo que sigue despues de ?? es el valor por defecto(protegerse con valores nulos)
      }
  */ //Solución
  Heroe.fromJson(Map<String, String> json)
      : //Los dos puntos indican que se ejecutara al momento en que se este creando la instancia de la clase y así evitamos que nuestran datos de la clase tengan que permitir ser nulos.
        this.nombre = json['nombre']!,
        this.poder = json['poder'] ?? 'No tiene poder';

  /*
  Constructores por nombres.
  ¿Qué pasaría si necesitamos una instancia de la clase, pero, en lugar de recibir el nombre y el poder recibimos una Map.
  */

  @override
  String toString() {
    //return 'nombre: $this.nombre'; MAL. Ya que .nombre no lo lee como una sola acción junto con el this, si no, que solo lee el this, y se forma una llamada recursiva que no para, ya que this llama a toString, toString llama a this y así infinitamente. Para arreglarlo tenemos que tener la acción entre llaves.
    return 'nombre: ${this.nombre}';
  }
}
