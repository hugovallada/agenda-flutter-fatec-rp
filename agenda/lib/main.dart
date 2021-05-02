import 'package:agenda/ui/home_page.dart';
import 'package:agenda/ui/listar_contatos.dart';
import 'package:agenda/ui/novo_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navegação',

    //
    //ROTAS DE NAVEGAÇÃO
    //
    initialRoute: '/tela1',
    routes: {
      '/tela1': (context) => HomePage(),
      '/tela2': (context) => NovoContato(),
      '/tela3': (context) => ListarContato(),
      // '/tela4': (context) => QuartaTela(),
    },
  ));
}
