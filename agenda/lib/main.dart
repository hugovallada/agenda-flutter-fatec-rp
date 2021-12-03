import 'dart:js';
import 'package:agenda/cadastro.dart';
import 'package:agenda/ui/finalizar.dart';
import 'package:agenda/ui/home_page.dart';
import 'package:agenda/ui/listar_contatos.dart';
import 'package:agenda/login.dart';
import 'package:agenda/ui/novo_contato.dart';
import 'package:agenda/ui/sobre.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navegação',

    //
    //ROTAS DE NAVEGAÇÃO
    //
    initialRoute: '/login',
    routes: {
      '/cadastro': (context) => Cadastro(),
      '/login': (context) => Login(),
      '/home': (context) => HomePage(),
      '/novo': (context) => NovoContatoC(),
      '/listar': (context) => ListarContato(),
      '/sobre': (context) => Sobre(),
      '/finalizar': (context) => Finalizar()
    },
    
  ));
}
