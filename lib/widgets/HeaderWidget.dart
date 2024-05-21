import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);
  /*
  final tituloTextStyle = const TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  final subTituloTextStyle = const TextStyle(
    fontSize: 20.0,
    color: Colors.black,
  );*/
  final iconoMenu = const Icon(
    Icons.menu,
    color: Colors.black,
    size: 40.0,
    semanticLabel: 'Menu',
  );
  final iconoSearch = const Icon(
    Icons.search,
    color: Colors.black,
    size: 40.0,
    semanticLabel: 'Search',
  );

  @override
  Widget build(BuildContext context) {
    //return AppBar(
    //  title: const Text('Menu', style: TextStyle(color: Colors.white)),
    //  backgroundColor: Color.fromARGB(255, 225, 218, 218),
    //);
    return Container(
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.all(20.0),
        height: 140.0,
        decoration: const BoxDecoration(
          backgroundBlendMode: BlendMode
              .colorBurn, //colorBurn: es un efecto de mezcla de colores
          color: Color.fromARGB(255, 225, 218, 218),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Text('Menu', style: tituloTextStyle),
                  IconButton(
                    icon: iconoMenu,
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: iconoSearch,
                    onPressed: () {},
                  ),
                ],
              ),
            ]));
  }
}
