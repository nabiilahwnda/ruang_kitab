import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background with gradient
          Container(
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
          ),
          // Positioned image at the top-right corner
          Positioned(
            top: 2,
            right: 1,
            child: Image.asset(
              'assets/img/Buble.png',
              width: 350,
              height: 350,
            ),
          ),
          // Positioned Row with image and text at the top-left corner
          Positioned(
            top: 10,
            right: 3,
            child: Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 30, // Ukuran font
                    fontWeight: FontWeight.bold, // Tebal teks
                    color: Color.fromRGBO(9, 30, 58, 1.0),
                  ),
                ),
                SizedBox(width: 10), // Jarak antara teks dan gambar
                Image.asset(
                  'assets/img/Home_img.png',
                  width: 200,
                  height: 150,
                ),
              ],
            ),
          ),
          // Positioned Card below the Buble image
          Positioned(
            top: 280, // Adjust the top position based on the image height
            right: 10,
            left: 10, // Adjust the right position
            child: Card(
              elevation: 5, // For shadow effect
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              child: Container(
                width: 300, // Width of the card
                height: 150, // Height of the card
                padding: EdgeInsets.all(10), // Padding inside the card
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/Home_menu1.png',
                      width: 95,
                      height: 95,
                    ),
                    Text(
                      'Baca Kitab',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(9, 30, 58, 1.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 455, // Adjust the top position based on the image height
            right: 10,
            left: 10, // Adjust the right position
            child: Card(
              elevation: 5, // For shadow effect
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              child: Container(
                width: 300, // Width of the card
                height: 150, // Height of the card
                padding: EdgeInsets.all(10), // Padding inside the card
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/Home_menu2.png',
                      width: 95,
                      height: 95,
                    ),
                    Text(
                      'Penjelasan Kitab',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(9, 30, 58, 1.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
