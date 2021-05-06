import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Agenda de contatos"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('Cadastrar Novo Contato'),
            onPressed: () {
              //Navegar para tela usando rota nomeada
              Navigator.pushNamed(context, '/novo');
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
            child: Text('Listar contatos'),
            onPressed: () {
              Navigator.pushNamed(context, '/listar');
            },
          ),
          SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sobre');
              },
              child: Text('Sobre')),
              SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/finalizar');
              },
              child: Text('Sair'))
        ],
      )),
    );
  }
}
