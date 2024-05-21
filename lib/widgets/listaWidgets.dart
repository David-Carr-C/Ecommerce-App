import 'package:flutter/material.dart';
import 'package:proyecto/pages/bags.dart';
import 'package:proyecto/pages/clothes.dart';
import 'package:proyecto/pages/joyeria.dart';
import 'package:proyecto/pages/shoes.dart';
import 'package:proyecto/pages/tecnologia.dart';
import 'package:proyecto/widgets/productsWidgets.dart';

// ignore: camel_case_types
class listaOpciones extends StatefulWidget {
  const listaOpciones({Key? key}) : super(key: key);
  @override
  State<listaOpciones> createState() => _listaOpcionesState();
}

// ignore: camel_case_types
class _listaOpcionesState extends State<listaOpciones> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          bloqueOpciones(Icons.shopping_cart, 0xffFFFFFF, 'Carrito', "1",
              context, const NextPage()),
          bloqueOpciones(Icons.shopping_cart, 0xffFFFFFF, 'Prendas', "6",
              context, const NextPage()),
          bloqueOpciones(Icons.shopping_bag_outlined, 0xffFFFFFF,
              'Bolsos y Mochilas', "5", context, const Bags()),
          bloqueOpciones(Icons.shopping_cart, 0xffFFFFFF, 'Zapateria', "5",
              context, const Shoes()),
          bloqueOpciones(Icons.electrical_services_rounded, 0xffFFFFFF,
              'Electronicos', "6", context, const Tecnologia()),
          bloqueOpciones(Icons.shopping_cart, 0xffFFFFFF, 'Joyeria', "7",
              context, Joyeria()),
        ],
      ),
    );
  }
}

Widget bloqueOpciones(IconData icono, int color, String texto, String texto2,
    BuildContext context, Widget widget) {
  return GestureDetector(
    onTap: () {
      //accion para ir a la pagina menu
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => widget,
      ));
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(31, 97, 95, 95),
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      height: 90.0,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: [
            Container(
              child: IconButton(
                icon: Icon(icono),
                color: Color(color),
                iconSize: 30.0,
                padding: const EdgeInsets.all(20),
                onPressed: () {
                  //accion para ir a la pagina menu
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const listaOpciones()),
                  );
                },
              ),
            ),
            const SizedBox(width: 10),
            Text(
              texto,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ]),
          texto2 != ""
              ? Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    texto2,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    ),
  );
}
