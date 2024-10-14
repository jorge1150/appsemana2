import 'package:flutter/material.dart';
import 'pages/home.dart';

// El Widget principal, MyApp es un StatelessWidget porque su contenido no cambiará.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio Semana 2',
      theme: ThemeData(
        // Definimos un tema personalizado, puedes modificar los colores según tu gusto.
        primarySwatch: Colors.blue,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.cyanAccent,
        ),
      ),
      home: const Center(
        child: MyHomePage(),
      ), // Página principal de la aplicación
    );
  }
}
