import 'package:flutter/material.dart';

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
        Text(
          'Pago exitoso',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 100,
        ),
        SizedBox(height: 20),
        Text(
          '¡Gracias por tu compra!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Success()),
            );
          },
          child: Text('Volver'),
        ),
      ],
    ),
  );
}
