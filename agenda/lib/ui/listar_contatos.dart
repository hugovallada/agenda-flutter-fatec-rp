import 'package:agenda/contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * Implementar um List<> de Contatos para P2
 */
class ListarContato extends StatelessWidget {
  List<ContatoWidget> contatos = [
    ContatoWidget('Hugo Lopes', '(16) 9 9999-9999'),
    ContatoWidget('Giovanna Monteiro', '(16) 9 8888-9999'),
    ContatoWidget('César Pedro Silva', '(16) 9 7777-9999'),
    ContatoWidget('Leandro Souza', '(16) 9 6666-9999'),
    ContatoWidget('Mustafá Leão', '(16) 9 5555-9999'),
    ContatoWidget('Anna Zâmbia', '(16) 9 4444-9999'),
    ContatoWidget('José Alves', '(16) 9 6933-6933'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contatos')),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].telefone),
          );
        },
      ),
    );
  }
}
