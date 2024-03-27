import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        backgroundColor: const Color(0xffccffcc),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(color: Colors.white, fontSize: 160, fontWeight: FontWeight.w100)),
            //2 opciones para hacer lo mismo
            //Text('Click${ clickCounter == 1 ? '' : 's' }', style: const TextStyle(color: Colors.white, fontSize: 25)),
            Text((clickCounter == 1) ? 'Click' : 'Clicks', style: const TextStyle(color: Colors.white, fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffccffcc),
        onPressed: () {
          clickCounter++;
          // Función para recargar los estados de la pantalla. Solo recarga el cambio que se hizo, lo demás detecta que no hubo cambio y no lo recarga.
          setState((){});
        },
        child: const Icon( Icons.plus_one ), 
      ),
    );
  }
}