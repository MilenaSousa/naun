import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('naun',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontSize: 26,
        letterSpacing: 3.8
      ),
    );
  }
}