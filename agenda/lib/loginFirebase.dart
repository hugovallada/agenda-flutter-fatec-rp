import 'dart:js';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
 @override
 _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
 var txtEmail = TextEditingController();
 var txtSenha = TextEditingController();
 bool isLoading = false;
 
 @override
 Widget build(BuildContext context) {
return Scaffold(
 appBar: AppBar(
 title: Text('Login'),
 centerTitle: true,
 backgroundColor: Colors.green[900]),
 backgroundColor: Colors.green[50],
 body: Container(
 padding: EdgeInsets.all(50),
 child: ListView(
 children: [
 TextField(
 controller: txtEmail,
 style:
 TextStyle(color: Colors.brown, fontWeight: FontWeight.w300, fontFamily: 'fontelight'),
 decoration: InputDecoration(
 prefixIcon: Icon(Icons.email), labelText: 'Email'),
 ),
 SizedBox(height: 20),
 TextField(
 obscureText: true,
 controller: txtSenha,
 style:
 TextStyle(color: Colors.brown, fontWeight: FontWeight.w300, fontFamily: 'fontelight'),
 decoration: InputDecoration(
 prefixIcon: Icon(Icons.lock), labelText: 'Senha'),
 ),
 SizedBox(height: 40),
 Container(
 width: 150,
 child: OutlinedButton(
 child: Text('Entrar', style: TextStyle (fontFamily: 'fontelight', color: Colors.green[900], 
fontWeight:FontWeight.w700),),
 onPressed: () {
 setState(() {
 isLoading = true;
 });
 login(txtEmail.text, txtSenha.text, context);
 },
 ),
 ),
 SizedBox(height: 60),
 Container(
 width: 150,
 child: TextButton(
 child: Text('Criar conta', style: TextStyle (fontFamily: 'fontelight', color: Colors.green[900], 
fontWeight:FontWeight.w700),),
 onPressed: () {
 Navigator.pushNamed(context, '/tela6');
 },
 ),
 ),
 SizedBox(height: 20),
 ],
 ),
 ),
 
 );
 
 }}

void login(email, senha, context){
 FirebaseAuth.instance.signInWithEmailAndPassword(
 email: email, password: senha).then((resultado){
 
 var isLoading = false;
 Navigator.pushReplacementNamed(
 context, '/tela8', arguments: resultado.user.uid,
 );
 }).catchError((erro){
 var mensagem = '';
 if (erro.code == 'user-not-found'){
 mensagem = 'ERRO: Usuário não encontrado.';
 }else if (erro.code == 'wrong-password'){
 mensagem = 'ERRO: Senha incorreta.';
 }else if (erro.code == 'invalid-email'){
 mensagem = 'ERRO: Email inválido.';
 }else{
 mensagem = 'ERRO: ${erro.message}';
 }
 SnackBar(
 content: Text('$mensagem'),
 duration: Duration(seconds: 2)
 );
 });
 }
