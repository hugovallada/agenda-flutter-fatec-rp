import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Finalizar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Logue-se novamente')),
        body: Center(
          child: Column(
            children: [
              Text("Queremos você de volta"),
              Padding(padding: EdgeInsets.all(5)),
              SizedBox(height: 15.0),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text("Entre novamente"))
            ],
          ),
        ));
  }
}
