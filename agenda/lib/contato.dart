import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContatoWidget extends StatelessWidget {
  //declaração dos atributos
  final String nome;
  final String telefone;

  //construtor
  ContatoWidget(this.nome, this.telefone) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //margin: EdgeInsets.all(20),
      //margin: EdgeInsets.symmetric(horizontal: 20),
      //margin: EdgeInsets.symmetric(vertical: 20),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      padding: EdgeInsets.all(50),

      //bordas
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue[600], width: 2),
          color: Colors.blue[100],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              colors: [Colors.blue[500], Colors.blue[100]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),

      child: Center(
          child: Column(
        children: [
          Text(nome,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          Text(telefone,
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
        ],
      )),
    );
  }
}
