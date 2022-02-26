import 'package:flutter/material.dart';
import 'package:realtimechat/constants/constants.dart';
import 'package:realtimechat/widgets/boton_azul.dart';

import 'package:realtimechat/widgets/custom_input.dart';
import 'package:realtimechat/widgets/custom_logo.dart';
import 'package:realtimechat/widgets/custom_label.dart';

class LoginPage extends StatelessWidget {
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
                    Logo(titulo: "Messenger"),
                    _Form(),
                    Labels(
                      ruta: 'register',
                      subtitle: '¿Aun no tienes cuenta?',
                      text: 'Crear cuenta',
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
  final nameCtrl = TextEditingController();
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
            icon: Icons.perm_identity,
            text: 'Nombre',
            textController: emailCtrl,
            keyboardType: TextInputType.text,
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
