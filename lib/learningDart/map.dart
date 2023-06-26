/**
 * Map: es un objeto
 */

void main() {
  Map persona = {
    'nombre': 'Ibis',
    'edad': 22,
    'soletero': true,
    true: false,
    1: 100,
    2: 500
  };

  //Siempre indicar el nombre del dato que buscamos como esta escrito en el map. 'nombre' buscarlo como 'nombre', true buscarlo como true.
  print(persona[true]);

  persona.addAll({3: 'Juan'});

  print(persona);

  /**
   * Cuando trabajamos con mapas, es necesario que especifiquemos como lucen esos mapas. 
   * Ejemplo = Map<String, String> nombre = {};
   * Entonces, aquí definimos que el nombre de los datos será un String y que los valores que guardaran igual será un String.
   * 
   * Ejemplo2 = Map<String, dynamic> nombre = {};
   * Ahora, los datos que guardaran las variables de tipo String son cualquier cosa.
   */
}
