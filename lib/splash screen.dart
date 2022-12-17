import 'dart:async';

import 'package:flutter/material.dart';

import 'Login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splashturf(),
  ));
}

class Splashturf extends StatefulWidget {
  @override
  State<Splashturf> createState() => _SplashturfState();
}

class _SplashturfState extends State<Splashturf> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/image/soccer-field-football-stadium-with-line-grass-pattern.png"))),
        child: Center(
          child: Text(
            " BOOK MY \n   MATCH",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 60),
          ),
        ),
      ),
    );
  }
}
