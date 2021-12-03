import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContatoWidget extends StatelessWidget {
  //declaração dos atributos
  String nome;
  String telefone;

  //construtor
  ContatoWidget(this.nome, this.telefone) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
  
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

  void getDocumentById(String id) async{
 await FirebaseFirestore.instance
 .collection('agenda').doc(id).get()
 .then((valor){
 nome = valor.get('nome');
 telefone = valor.get('telefone');
 });
 }

@override
 Widget buildContato(BuildContext context) {

 var id = ModalRoute.of(context)?.settings.arguments;
 if (id != null){
 
 if(nome == '' && telefone == ''){
 getDocumentById(id.toString());
 }
 }
 return Scaffold(
 appBar: AppBar(
 
 title: Text('Meus contatos', style: TextStyle(fontFamily: 'fontelight'),),
 centerTitle: true,
 backgroundColor: Colors.blue[600],
 automaticallyImplyLeading: false,
 
 ));
}}