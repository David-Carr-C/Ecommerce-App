import 'package:flutter/material.dart';
import 'package:proyecto/pages/menu.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: pagoExitoso(context),
      ),
    );
  }
}

Widget pagoExitoso(context) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Pago exitoso',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 100,
        ),
        const SizedBox(height: 20),
        const Text(
          '¡Gracias por tu compra!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            surfaceTintColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Menu()),
            );
          },
          child: const Text('Volver'),
        ),
      ],
    ),
  );
}
