import 'package:agenda/ui/home_page.dart';
import 'package:agenda/ui/listar_contatos.dart';
import 'package:agenda/ui/login.dart';
import 'package:agenda/ui/novo_contato.dart';
import 'package:agenda/ui/sobre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navegação',

    //
    //ROTAS DE NAVEGAÇÃO
    //
    initialRoute: '/login',
    routes: {
      '/login': (context) => LoginF(),
      '/tela1': (context) => HomePage(),
      '/tela2': (context) => NovoContatoC(),
      '/tela3': (context) => ListarContato(),
      '/tela4': (context) => Sobre(),
    },
  ));
}
