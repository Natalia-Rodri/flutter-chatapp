import 'package:flutter/material.dart';

class labels extends StatelessWidget {
  final String ruta; 
  final String textoPregunta;
  final String textoBoton; 

  const labels( this.ruta, this.textoBoton, this.textoPregunta );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(textoPregunta, style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),),
          SizedBox(height: 10),
          GestureDetector(
            child: Text(textoBoton, style: TextStyle(color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: (){
              Navigator.pushReplacementNamed(context, ruta);
            }
          )
        ],
      ),
    );
  }
}