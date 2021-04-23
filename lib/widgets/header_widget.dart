import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String text;

  const HeaderWidget({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.green),
    );
  }
}