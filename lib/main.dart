import 'package:flutter/material.dart';
import 'package:ruang_kitab/welcome.dart';
import 'splashscreen.dart'; // Import your Splashscreen widget

void main() {
  
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false, // Menonaktifkan banner debug
    routes: {
      '/': (context) => const Splashscreen(), // Use Splashscreen here
       '/welcome' : (context) => Welcome(),
    },
  ));
}
