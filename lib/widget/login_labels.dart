import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({
    Key key,
    @required this.page,
    @required this.description,
    @required this.linkText,
  }) : super(key: key);

  final Widget page;
  final String description;
  final String linkText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            description,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => page)),
            child: Text(
              linkText,
              style: TextStyle(
                color: Colors.blue[600],
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
