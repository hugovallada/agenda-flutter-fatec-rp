import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
 @override
 _CadastroState createState() => _CadastroState();
}
class _CadastroState extends State<Cadastro> {
 var txtNome = TextEditingController();
 var txtEmail = TextEditingController();
 var txtSenha = TextEditingController();
@override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text('Cadastro', style: TextStyle(fontFamily: 'fontelight')),
 centerTitle: true,
 backgroundColor: Colors.blue[600]),
 drawer: Menu(),
 backgroundColor: Colors.blue[100],
 body: Container(
 padding: EdgeInsets.all(50),
 
 child: ListView(
 children: [
 TextField(
 controller: txtNome,
 style:
 TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontFamily: 'fontelight'),
 decoration: InputDecoration(
 prefixIcon: Icon(Icons.person), labelText: 'Nome completo'),
 ),
 SizedBox(height: 20),
 TextField(
 controller: txtEmail,
 style:
 TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontFamily: 'fontelight'),
 decoration: InputDecoration(
 prefixIcon: Icon(Icons.email), labelText: 'Email'),
 ),
 SizedBox(height: 20),
 TextField(
 obscureText: true,
 controller: txtSenha,
 style:
 TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontFamily: 'fontelight'),
 decoration: InputDecoration(
 prefixIcon: Icon(Icons.lock), labelText: 'Senha'),
 ),
 SizedBox(height: 40),
 Row(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 Container(
 width: 150,
 child: OutlinedButton(
 child: Text('Criar', style: TextStyle(fontFamily: 'fontelight', color: Colors.green[900], fontWeight:FontWeight.w700),),
 onPressed: () {
 criarConta(txtNome.text, txtEmail.text, txtSenha.text);
 },
 ),
 ),
 Container(
 width: 150,
 child: OutlinedButton(
 child: Text('Cancelar', style: TextStyle(fontFamily: 'fontelight', color: Colors.green[900], 
fontWeight:FontWeight.w700),),
 onPressed: () {
 Navigator.pop(context);
 },
 ),
 ),
 ],
 ),
 SizedBox(height: 60),
 ],
 ),
 ),
 );
 }

  void criarConta(nome, email, senha) {
 
 FirebaseAuth.instance.createUserWithEmailAndPassword(
 email: email, password: senha).then((resultado){
 //Armazenar dados adicionais no Firestore
 var db = FirebaseFirestore.instance;
 db.collection('usuarios').doc(resultado.user!.uid).set(
 {
 'Nome' : nome,
 'Email' : email,
 }
 ).then((valor) {
 ScaffoldMessenger.of(context).showSnackBar(
 SnackBar(
 content: Text('Usuário criado com sucesso'),
 duration: Duration(seconds: 2)
 )
 );
 Navigator.pop(context);
 });
 }).catchError((erro){
 if (erro.code == 'email-already-in-use'){
 ScaffoldMessenger.of(context).showSnackBar(
 SnackBar(
 content: Text('ERRO: O email informado já está em uso.'),
 duration: Duration(seconds: 2)
 )
 );
 }else{
 ScaffoldMessenger.of(context).showSnackBar(
 SnackBar(
 content: Text('ERRO: ${erro.message}'),
 duration: Duration(seconds: 2)
 )
 );
 }
 });
 }
}