import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.redAccent,
      child: Text(
        "Akilna",
        style: TextStyle(
            color: KPrimaryColor, fontSize: 26, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
