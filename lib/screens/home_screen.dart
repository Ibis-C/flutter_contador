import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //El key nos sirve para identificar un widget dentro del contexto. Como para saber a que widget queremos hacer referencias
  const HomeScreen({super.key});

  @override
  /* El BuildContext es todo mi árbol de widgets. Toda la estructura de los widgets. 
  Sirve para saber cual es el contexto en el cuál nuestro widget esta haciendo construido.
  Por ejemplo: si deseamos navegar de una pantalla a otra, entonces le decimos al BuildContext  que necesitamos movernos a esa otra pantalla y que necesitamos la información del padre que maneja las rutas. */
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);
    int counter = 15;

    //const en el primer padre
    /* Scaffold ya prepara mi citio para que yo pueda comenzar a trabajar en él */
    return Scaffold /* El Scaffold usa body en vez de child */ (
      /* El widget que espera appBar tiene que se de tipo PreferredSizeWidget o algun widget heredado de este */ appBar:
          /* AppBar no tiene un constructor const por lo que los antecesores o los padres de este widget no podrán ser const. AppBar va a cambiar después de haber sido construida la app, ya que los dispositivos tienen diferentes pantallas, etc. */ AppBar(
        title: const Text('HomeScreen'),
        elevation: 0.0,
      ),
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
      floatingActionButton: FloatingActionButton(
        child: /* Icon es un widget especializado para mostrar iconos. Los iconos también son widgets */
            const Icon(Icons.add),
        onPressed: () {
          counter++;
          print('Contador: $counter');
        },
      ),
    );
  }
}
/* 
Gestor de estado: un objeto que maneja mi estado. Este gestor maneja el estado y el StatelessWidget no se preocupa de esto.
Casi todos los widgets solo tienen un child, y no pueden tener más.
Casi todos los widgets reciben un child o un children. Es muy raro, pero, algunos no usan este atributo.
*/
