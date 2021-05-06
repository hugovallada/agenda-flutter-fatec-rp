import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sobre')),
        body: Center(child: Text("Lista de contatos\nO objetivo deste aplicativo é permitir que usuários sejam cadastrados e posteriormente listados\nDesenvolvedores: Hugo Lopes e Giovanna Monteiro")));
  }
}
