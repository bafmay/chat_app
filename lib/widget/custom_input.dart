import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.controller,
    this.inputType = TextInputType.text,
    this.isPassword = false,
  }) : super(key: key);

  final String text;
  final Icon icon;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: Offset(0, 5),
              blurRadius: 5,
            )
          ]),
      child: TextField(
        controller: controller,
        autocorrect: false,
        keyboardType: inputType,
        obscureText: isPassword,
        decoration: InputDecoration(
            prefixIcon: icon,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: text),
      ),
    );
  }
}
