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
          ContatoWidget('Hugo Lopes', '33212232'),
          ContatoWidget('Giovanna Monteiro', '313231231'),
          ContatoWidget('César Pedro Silva', '1323123'),
          ContatoWidget('Leandro', '488'),
          ContatoWidget('Lamborghini', 'Huracani_huracan.jpg'),
          ContatoWidget('Lamborghini', 'Urusi_urus.jpg'),
          ContatoWidget('Maserati', 'GTSts.jpg'),
        ]),
      ),
    );
  }
}
