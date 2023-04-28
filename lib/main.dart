import 'package:flutter/material.dart';
import 'package:ibarra/pagina1.dart';
import 'package:ibarra/pagina2.dart';
import 'package:ibarra/pagina3.dart';
import 'package:ibarra/pagina4.dart';
import 'package:ibarra/pagina4_2.dart';
import 'package:ibarra/pagina4_3.dart';
import 'package:ibarra/pagina5.dart';
import 'package:ibarra/form1.dart';
import 'package:ibarra/form2.dart';
import 'package:ibarra/form3.dart';
import 'package:ibarra/form4.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    debugShowCheckedModeBanner: false,
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => const Pantalla1(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/segunda': (context) => const Pantalla2(),
      '/tercera': (context) => const Pantalla3(),
      '/cuarta': (context) => const Pantalla4(),
      '/quinta': (context) => const Pantalla5(),

      '/cuarta2': (context) => const Pantalla6(),
      '/cuarta3': (context) => const Pantalla7(),

      '/form1': (context) => const Formulario1(),
      '/form2': (context) => const Formulario2(),
      '/form3': (context) => const Formulario3(),
      '/form4': (context) => const Formulario4(),
    },
  ));
}
