import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
    Key key,
    @required this.text,
    @required this.onPress,
    this.backgroundColor = Colors.blue,
  }) : super(key: key);

  final String text;
  final Function onPress;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: backgroundColor,
      shape: StadiumBorder(),
      onPressed: onPress,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
        ),
      ),
    );
  }
}
