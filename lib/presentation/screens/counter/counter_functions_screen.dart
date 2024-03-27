import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Colors.white, Color(0xFF4E932E)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Counter Functions'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: const Icon( Icons.refresh_rounded ), 
              onPressed: () { 
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(color: Colors.white, fontSize: 160, fontWeight: FontWeight.w500)),
              //2 opciones para hacer lo mismo
              //Text('Click${ clickCounter == 1 ? '' : 's' }', style: const TextStyle(color: Colors.white, fontSize: 25)),
              Text((clickCounter == 1) ? 'Click' : 'Clicks', style: const TextStyle(color: Colors.white, fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton( 
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
      
            const SizedBox( height: 15 ),
      
            CustomButton( 
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if(clickCounter == 0) return;
                  clickCounter--;
                });
              },
            ),
      
            const SizedBox( height: 15 ),
      
            CustomButton( 
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
          ],
        )
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed; 

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(),
      backgroundColor: const Color(0xffffffff),
      elevation: 30,
      onPressed: onPressed,
      child: Icon( icon ), 
    );
  }
}