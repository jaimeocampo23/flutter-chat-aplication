import 'package:flutter/material.dart';
import 'package:realtimechat/constants/constants.dart';
import 'package:realtimechat/widgets/boton_azul.dart';

import 'package:realtimechat/widgets/custom_input.dart';
import 'package:realtimechat/widgets/custom_logo.dart';
import 'package:realtimechat/widgets/custom_label.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Logo(titulo: "Registro"),
                    _Form(),
                    Labels(
                      ruta: 'login',
                      subtitle: '¿Ya tienes cuenta?',
                      text: 'Login',
                    ),
                    Text(
                      'Terminos y condiciones de uso',
                      style: TextStyle(fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.supervised_user_circle,
            text: 'Email',
            textController: emailCtrl,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            text: 'Email',
            textController: emailCtrl,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
            icon: Icons.lock,
            text: 'Password',
            textController: passCtrl,
            isPassword: true,
          ),
          Boton(
              onPressed: () {
                print(emailCtrl.text);
                print(passCtrl.text);
              },
              text: 'Ingrese')
        ],
      ),
    );
  }
}
