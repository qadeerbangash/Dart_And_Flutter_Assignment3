import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Ecommer-Hk",
    home: Homepage(),
    theme: ThemeData(primaryColor: Colors.blueGrey),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "E-Commerce App",
          ),
        ),
        body: CircleAvatar(
          radius: 50,
          backgroundImage:
              NetworkImage("https://unsplash.com/photos/EwHquRpv-9A"),
        ));
  }
}
