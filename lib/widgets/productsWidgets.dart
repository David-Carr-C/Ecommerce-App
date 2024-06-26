import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  double widthpantalla = 0;

  final titulostyletext = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    widthpantalla = MediaQuery.of(context).size.width - 50;

    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Productos", style: titulostyletext),
          SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              clotheBlock(
                "ropaUno.jpg",
                "endless rose",
                "T-shirt white",
                "\$120.50",
              ),
              clotheBlock(
                "ropaDos.jpg",
                "Roller Rabbit",
                "Dress rose",
                "\$250.50",
              ),
              clotheBlock(
                "ropaTres.jpg",
                "Tehory",
                "T-shirt orange",
                "\$149.50",
              ),
              clotheBlock(
                "ropaCuatro.jpg",
                "Madewell",
                "t-shirt crown",
                "\$260.00",
              ),
              clotheBlock(
                "ropaCinco.jpg",
                "endless rose",
                "Top white",
                "\$148.99",
              ),
              clotheBlock(
                "ropa6.jpg",
                "Tehory",
                "T-shirt cream",
                "\$116.99",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget clotheBlock(
    String imagen,
    String titulo,
    String subtitulo,
    String precio,
  ) {
    return Container(
      width: (widthpantalla / 2) - 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/$imagen",
              width: (widthpantalla / 2) - 8,
              height: (widthpantalla / 1.5),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(subtitulo),
          Text(
            precio,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
