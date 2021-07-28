import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  final String texto; 
  const logo(this.texto);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top:50),
        width: 170,
        child: Column(
          children: [
            Image(image: AssetImage("assets/tag-logo.png"),),
            SizedBox( height: 20,),
            Text(texto, style: TextStyle(fontSize: 30))
          ],
        )
      ),
    );
  }
}