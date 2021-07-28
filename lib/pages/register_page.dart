import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/labels.dart';
import 'package:chat/widgets/logo.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea (
          child:SingleChildScrollView (
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height *0.9,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  logo("Registro"),
                  _Form(),
                  labels("login", "¿Ya tienes cuenta?", "Inicia sesión"),
                  Text("Terminos y condiciones de uso", style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w200))

                ],
              ),
            ),
          ),
      )
   );
  }
}


class _Form extends StatefulWidget {
  const _Form({ Key? key }) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameCtrl= TextEditingController();
  final emailCtrl= TextEditingController();
  final passCtrl= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal:50),
      child: Column(
        children: [
          CustomInput(Icon(Icons.supervised_user_circle), "Email", TextInputType.text, nameCtrl, false),
          CustomInput(Icon(Icons.email_outlined), "Email", TextInputType.emailAddress, emailCtrl, false),
          CustomInput(Icon(Icons.lock_outline), "Password", TextInputType.text, passCtrl, true),
          BotonAzul("Ingresen", (){

          } ),
        ],
      ),
      
    );
  }
}



