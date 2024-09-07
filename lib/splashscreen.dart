import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  bool _isLogoVisible = false; // Kontrol visibilitas logo
  bool _isBungaVisible = false; // Kontrol visibilitas bunga

  @override
  void initState() {
    super.initState();
    startTimer();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isLogoVisible = true; // Mulai animasi fade-in untuk logo setelah 1 detik
      });
    });
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isBungaVisible = true; // Mulai animasi fade-in untuk bunga setelah 2 detik
      });
    });
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight, 
            end: Alignment.centerLeft, 
            colors: [
              Color(0xFFFAFFFF), // Warna putih sangat terang
              Color(0xFFCDDDEF), // Warna biru muda
            ],
          ),
        ),
        child: Stack(
          children: <Widget>[
            // Lottie animation in the center
            Center(
              child: Lottie.network(
                'https://lottie.host/1aebefef-847a-4427-a534-43d29fa5291b/KNzElXfTB3.json',
                fit: BoxFit.cover,
              ),
            ),
            // Image in the top-right corner with fade-in animation
            Positioned(
              top: 20,
              right: 20,
              child: AnimatedOpacity(
                opacity: _isLogoVisible ? 1.0 : 0.0,
                duration: Duration(seconds: 2), // Durasi animasi fade-in
                child: Image.asset(
                  'assets/img/Logo_YAKIN.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            // Image in the bottom-left corner with fade-in animation
            Positioned(
              bottom: 1,
              left: 1,
              child: AnimatedOpacity(
                opacity: _isBungaVisible ? 1.0 : 0.0,
                duration: Duration(seconds: 1), // Durasi animasi fade-in
                child: Image.asset(
                  'assets/img/Bunga.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
