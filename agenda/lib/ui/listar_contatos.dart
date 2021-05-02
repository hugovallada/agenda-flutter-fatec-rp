import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListarContato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastrar Novo Contato')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('Voltar para o menu inicial'),
            onPressed: () {
              //Navegar para tela anterior
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: Text('Próximo'),
            onPressed: () {
              Navigator.pushNamed(context, '/tela3');
            },
          ),
        ],
      )),
    );
  }
}
