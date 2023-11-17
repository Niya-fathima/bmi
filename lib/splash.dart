import 'dart:async';

import 'package:bmi/bmi-screen.dart';
import 'package:flutter/material.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),
        () => Navigator.push(
          context,MaterialPageRoute(builder: (context) => bmicalculator())
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage('images/img.jpg'))
        ),
      ),

    );
  }
}
