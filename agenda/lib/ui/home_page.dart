import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Lista de contatos",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        FlatButton(
            onPressed: () {},
            child: Text("Adicionar novo",
                style: TextStyle(
                    color: Colors.white, backgroundColor: Colors.black)))
      ],
    );
  }
}
