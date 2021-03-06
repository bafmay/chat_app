import 'package:flutter/material.dart';
import 'package:realtime_chat/pages/register_page.dart';
import 'package:realtime_chat/widget/blue_button.dart';
import 'package:realtime_chat/widget/custom_input.dart';
import 'package:realtime_chat/widget/login_labels.dart';
import 'package:realtime_chat/widget/login_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(title: "Messenger"),
                _Form(),
                Labels(
                  description: "¿No tienes cuenta?",
                  linkText: "Crea una ahora!",
                  page: RegisterPage(),
                ),
                Text(
                  "Términos y condiciones de uso",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  _Form({Key key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            text: "Email",
            icon: Icon(Icons.mail_outline),
            inputType: TextInputType.emailAddress,
            controller: emailController,
          ),
          CustomInput(
            text: "Password",
            icon: Icon(Icons.lock_outline),
            isPassword: true,
            controller: passwordController,
          ),
          BlueButton(
            text: "Log in",
            onPress: () {
              print(emailController.text);
              print(passwordController.text);
            },
          ),
        ],
      ),
    );
  }
}
