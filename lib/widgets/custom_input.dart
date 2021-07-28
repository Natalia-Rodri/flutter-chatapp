import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget{
  final Icon icono;
  final String texto;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  CustomInput( this.icono, this.texto, this.keyboardType, this.textController, this.isPassword);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.only(right: 20,top: 5, left: 5, bottom: 5 ),
            margin: EdgeInsets.only(bottom: 20),
            child: TextField(
              autocorrect: false,
              controller: this.textController,
              keyboardType: keyboardType,
              obscureText: this.isPassword,
              decoration: InputDecoration(
                prefixIcon: icono,
                focusedBorder: InputBorder.none,
                hintText: texto
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: Offset(0, 5),
                  blurRadius: 5,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
              ),
          );
  }
}