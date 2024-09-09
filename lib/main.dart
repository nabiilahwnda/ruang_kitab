import 'package:flutter/material.dart';
import 'package:ruang_kitab/welcome.dart';
import 'splashscreen.dart'; 

void main() {
  
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false, // Menonaktifkan banner debug
    routes: {
      '/': (context) => const Splashscreen(), 
       '/welcome' : (context) => Welcome(),
    },
  ));
}
