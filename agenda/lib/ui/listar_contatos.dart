import 'package:agenda/contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListarContato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carros')),
      body: SingleChildScrollView(
        child: Column(children: [
          ContatoWidget('Audi', 'Q8'),
          ContatoWidget('Audi', 'R8'),
          ContatoWidget('BMW', 'M2'),
          ContatoWidget('Ferrari', '488'),
          ContatoWidget('Lamborghini', 'Huracani_huracan.jpg'),
          ContatoWidget('Lamborghini', 'Urusi_urus.jpg'),
          ContatoWidget('Maserati', 'GTSts.jpg'),
        ]),
      ),
    );
  }
}
