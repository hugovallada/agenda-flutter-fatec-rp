import 'package:agenda/contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NovoContatoC extends StatefulWidget {
  @override
  NovoContato createState() => NovoContato();
}

class NovoContato extends State<NovoContatoC> {
  final myControllerNome = TextEditingController();
  final myControllerTelefone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cadastrar Contato"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: myControllerNome,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome',
                    hintText: 'Digite o nome do contato aqui'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                controller: myControllerTelefone,
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Telefone',
                    hintText: 'Entre o número de telefone'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  ContatoWidget contato = new ContatoWidget(
                      myControllerNome.text, myControllerTelefone.text);

                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: new Text("Cadastrado"),
                          content: new Text(
                              "Usuário cadastrado. Você já pode listá-lo"),
                          actions: [
                            new ElevatedButton(
                                child: new Text("Fechar"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        );
                      });

                  Navigator.pushNamed(context, "/home");
                },
                child: Text(
                  'Cadastrar',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
