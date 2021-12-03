import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
 
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 debugShowCheckedModeBanner: false,
 theme: ThemeData(primaryColor: Colors.blue[600]),
 home: Scaffold(
 appBar: AppBar(
 title: Text("Sobre", style:TextStyle(fontFamily: 'fontelight')),
 ),

 body: Container(
 padding: EdgeInsets.all(20),
 child: ListView(
 children: [
 
 SizedBox(height: 20),
 ListTile(
 title: Text('Nosso propósito:', style: TextStyle(fontSize: 24, color: Colors.blue[600], fontFamily: 'fontelight')),
 
 ),
 SizedBox(height: 20),
 ListTile(
 
 title: Text('Criar uma agenda de contato para uma fácil manutenção de dados.',
 style: TextStyle(fontSize: 16, fontFamily: 'fontelight', color: Colors.black)),
 ),
 SizedBox(height: 20),
 Container(
 width: 150,
 height: 200,
 child: Center( 
 ),
 ),
 
 SizedBox(height: 20),
 Container(
 width: 150,
 height: 50,
 child: Center(
 
 child: Text('Desenvolvido por Hugo Vallada e Giovanna Monteiro.', style: TextStyle(fontSize: 15, fontFamily: 'fontelight', 
color:Colors.blue[600]),
 ),
 ),
 ), 
 ]
 
 )
 )
 )
 );
}
}