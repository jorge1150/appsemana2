import 'package:flutter/material.dart';

// StatefulWidget porque el estado del ícono cambiará cuando se presione el botón.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // Variables para manejar el nombre y el estado del ícono
  String nombre = 'Jorge Mosquera, Darwin Bracero y Miguel Guevara.';
  bool isIconChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio Semana 2 - Flutter App'),
      ),
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Muestra el nombre del usuario
            Align(
              alignment: Alignment.center,
              child: Text(
                'Hola, $nombre',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20), // Espacio entre elementos
            // Agregar contenedor que puede personalizarse
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Este es un ejercicio de Flutter que demuestra cómo cambiar el ícono del botón flotante.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 250.0,
              width: 350,
              child: Image.asset('assets/logoU.jpg'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Cambia el ícono cuando se presiona el botón flotante
          setState(() {
            isIconChanged = !isIconChanged;
          });
        },
        child: Icon(
          isIconChanged ? Icons.check : Icons.edit, // Alterna entre dos íconos
        ),
      ),
    );
  }
}
