import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String texto;
  final Function funcion;

  const BotonAzul(this.texto, this.funcion);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            elevation: 2,
            highlightElevation: 5,
            color: Colors.blue,
            shape: StadiumBorder(),
            onPressed: () =>funcion ,
            child: Container(
              width: double.infinity,
              height: 55,
              child: Center(
                child: Text(texto, style: TextStyle(color: Colors.white, fontSize: 17),),
              )
            )
    );
  }
}