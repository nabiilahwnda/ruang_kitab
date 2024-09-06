import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    var duration = Duration(seconds: 4);
    Timer(duration, navigateToNextScreen);
  }

  void navigateToNextScreen() {
    Navigator.pushReplacementNamed(context, '/welcome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          // Lottie animation in the center
          Center(
            child: Lottie.network(
              'https://lottie.host/1aebefef-847a-4427-a534-43d29fa5291b/KNzElXfTB3.json',
              fit: BoxFit.cover,
            ),
          ),
          // Image in the top-right corner
          Positioned(
            top: 20, // Adjust as needed
            right: 20, // Adjust as needed
            child: Image.asset(
              'assets/img/Logo_YAKIN.png',
              width: 100, // Adjust as needed
              height: 100, // Adjust as needed
            ),
          ),
        ],
      ),
    );
  }
}
