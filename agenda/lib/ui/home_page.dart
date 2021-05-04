import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Agenda de Contatos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('Cadastrar Novo Contato'),
            onPressed: () {
              //Navegar para tela usando rota nomeada
              Navigator.pushNamed(context, '/tela2');
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
            child: Text('Listar contatos'),
            onPressed: () {
              Navigator.pushNamed(context, '/tela3');
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tela4');
              },
              child: Text('Sobre'))
        ],
      )),
    );
  }
}
