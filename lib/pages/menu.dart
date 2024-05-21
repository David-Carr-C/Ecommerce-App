import 'package:flutter/material.dart';
import 'package:proyecto/widgets/HeaderWidget.dart';
import 'package:proyecto/widgets/listaWidgets.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      // ignore: unnecessary_const
      body: Column(children: <Widget>[HeaderWidget(), listaOpciones()]),
    );
  }
}
