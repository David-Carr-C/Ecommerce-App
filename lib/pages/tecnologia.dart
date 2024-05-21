import 'package:flutter/material.dart';
import 'package:proyecto/screens/details/details.dart';
import 'package:proyecto/widgets/HeaderWidget.dart';
//import '../widgets/productsWidgets.dart';

class Tecnologia extends StatefulWidget {
  const Tecnologia({Key? key}) : super(key: key);

  @override
  State<Tecnologia> createState() => _TecnologiaState();
}

class _TecnologiaState extends State<Tecnologia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderWidget(),
            SizedBox(height: 20),
            Products(),
          ],
        ),
      ),
    );
  }
}

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
          Text("Tecnología", style: titulostyletext),
          SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              clotheBlock(
                "tecnology (1).jpg",
                "endless rose",
                "T-shirt white",
                "\$120.50",
              ),
              clotheBlock(
                "tecnology (2).jpg",
                "Roller Rabbit",
                "Dress rose",
                "\$250.50",
              ),
              clotheBlock(
                "tecnology (3).jpg",
                "Tehory",
                "T-shirt orange",
                "\$149.50",
              ),
              clotheBlock(
                "tecnology (4).jpg",
                "Madewell",
                "t-shirt crown",
                "\$260.00",
              ),
              clotheBlock(
                "tecnology (5).jpg",
                "endless rose",
                "Top white",
                "\$148.99",
              ),
              clotheBlock(
                "tecnology (6).jpg",
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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Details()),
        );
      },
      child: Container(
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
      ),
    );
  }
}
