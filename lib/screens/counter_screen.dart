import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //El key nos sirve para identificar un widget dentro del contexto. Como para saber a que widget queremos hacer referencias
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0; //Elevado a una propiedad

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void restart() {
    counter = 0;
    setState(() {});
  }

  @override
  /* El BuildContext es todo mi árbol de widgets. Toda la estructura de los widgets. 
  Sirve para saber cual es el contexto en el cuál nuestro widget esta haciendo construido.
  Por ejemplo: si deseamos navegar de una pantalla a otra, entonces le decimos al BuildContext  que necesitamos movernos a esa otra pantalla y que necesitamos la información del padre que maneja las rutas. */
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);
    // Tenemos que elevalor a una propiedad(int counter = 15;)

    //const en el primer padre
    /* Scaffold ya prepara mi citio para que yo pueda comenzar a trabajar en él */
    return Scaffold /* El Scaffold usa body en vez de child */ (
      backgroundColor: Colors.white,
      /* /* El widget que espera appBar tiene que se de tipo PreferredSizeWidget o algun widget heredado de este */ appBar:
          /* AppBar no tiene un constructor const por lo que los antecesores o los padres de este widget no podrán ser const. AppBar va a cambiar después de haber sido construida la app, ya que los dispositivos tienen diferentes pantallas, etc. */ AppBar(
        title: const Text('CounterScreen'),
        elevation: 0.0,
        // backgroundColor: Colors.white,
      ), */
      body: Center(
        child: Column(
          /*Especificado en una columna esta hacia abajo*/ mainAxisAlignment:
              /* Posición vertical */ MainAxisAlignment.center,
          /* Posición horizontal. Alinea los hijos de manera relativa al widget que es más grande crossAxisAlignment: CrossAxisAlignment.center,*/
          children: <Widget>[
            const Text('Número de clics:', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
          /* Aquí las funciones no tienen los parentesis (increase()), ya que, no se estan ejecutando, si no que se estan pasando como referencia */
          increaseFn: increase,
          decreaseFn: decrease,
          restartFn: restart),
    );
  }
}

//Nuevo widget. Widget totalmente independiente
class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function restartFn;

  const CustomFloatingActions({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.restartFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      /* El mainAxisAlignment va de forma horizontal y trabaja sobre esto */ mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
      /* El crossAxisAlignment va de forma vertical y trabaja sobre esto. Esto se usa con la columna (Column) y no con el Row crossAxisAlignment:
          CrossAxisAlignment.start, */

      children: [
        FloatingActionButton(
          onPressed: () => decreaseFn() /* () => setState(() => counter--) */,
          /* Forma larga de onPressed.
            onPressed: () {
              counter--;
            /* setState sirve para redibujar el objeto. Esta es la propiedad de StatefulWidget*/ 
              setState(() {});
            }, 
          */
          child: /* Icon es un widget especializado para mostrar iconos. Los iconos también son widgets */
              const Icon(Icons.exposure_minus_1_outlined),
        ),

        /* Agregar un widget para separar widgets sin usar  mainAxisAlignment: MainAxisAlignment.spaceEvenly*/ //const SizedBox(width: 20),

        FloatingActionButton(
          onPressed: () => restartFn(),
          child: const Icon(Icons.restart_alt),
        ),

        /* Agregar un widget para separar widgets sin usar  mainAxisAlignment: MainAxisAlignment.spaceEvenly*/ //const SizedBox(width: 20),

        FloatingActionButton(
          onPressed: () /*mando a ejecutar la función*/ => /*retorno implicito*/
              increaseFn() /*esto es lo que quiero retornar*/,
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),
      ],
    );
  }
}
/* 
Gestor de estado: un objeto que maneja mi estado. Este gestor maneja el estado y el StatelessWidget no se preocupa de esto.
Casi todos los widgets solo tienen un child, y no pueden tener más.
Casi todos los widgets reciben un child o un children. Es muy raro, pero, algunos no usan este atributo.
*/
