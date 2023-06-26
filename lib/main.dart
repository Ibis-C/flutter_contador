//Importanciones propias de flutter de primero
import 'package:flutter/material.dart';

//Imports de terceros despues
import 'package:mi_primer_proyecto/screens/counter_screen.dart';
//import 'package:mi_primer_proyecto/screens/home_screen.dart';

void main() {
  runApp(const MyApp()); // runApp es el iniciador de todo y recibe un widget
}

//los widgets son clases, pero no todas las clases son widgets. Para que una clas sea un widget esta tiene que extender de StatelesWidget o StatefulWidget.
class MyApp extends StatelessWidget {
  //Constructor de la clase. Al estar en llaves el parametros esto indica que se puede pasar o no.
  const MyApp({super.key});

  //Los StatelessWidget tiene un metodo, el cual recibe el BuildContext. Este metodo es para que mi aplicación sea considerada un widget.
  @override
  Widget build(BuildContext context) {
    //El metodo build espera un widget. Puede ser cualquier cosa que sea un widget.
    //El primer padre debe llevar constante y este nunca va a cambiar
    return const MaterialApp(
        //por defecto es true
        debugShowCheckedModeBanner: false,

        // home es una forma de trabajar que nos pide cual es nuestro widget que queremos mostrar acá
        //Center es un widget y nuestra primera pantalla
        home: CounterScreen());
  }
}
