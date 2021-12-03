import 'package:flutter/material.dart';

class BoasVindas extends StatefulWidget {
 @override
 _BoasVindasState createState() => _BoasVindasState();
}
class _BoasVindasState extends State<BoasVindas> {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 backgroundColor: Color.fromARGB(255,146,198,1),
 appBar: AppBar(title: Text ('Agenda', style:TextStyle(fontFamily: 'fontelight')),
 backgroundColor: Colors.blue[600]
 ), 
 body: Column(
 
 children: [
 
 Container(
 width: 600,
 height: 180, 
 color: Color.fromARGB(255,146,198,1),
 child: Image.asset(''),
 ),
 Container(
 padding: EdgeInsets.all(30),
 width: 600,
 height: 300, 
 color: Color.fromARGB(255,146,198,1),
 
 child: Column(
 children: [
 Text('',
 style: TextStyle(fontFamily: 'fontelight', color: Colors.white, fontSize: 18,), ),
 SizedBox(height: 20,),])
 ),
 Container(
 width: 300,
 
 
 child: TextButton(
 
 child: Text('EXPLORAR', style: TextStyle(fontFamily: 'fontelight', fontSize: 28, color: Colors.blue[600], 
fontWeight:FontWeight.w900) ),
 
 onPressed: () {Navigator.pushNamed(context, '/tela2');
 },
 ),
 ),
 
 ],) 
 
 ); 
}
}