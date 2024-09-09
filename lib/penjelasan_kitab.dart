import 'package:flutter/material.dart';
import 'package:ruang_kitab/bab_kitab.dart';
import 'package:ruang_kitab/welcome.dart';

class PenjelasanKitab extends StatefulWidget {
  const PenjelasanKitab({Key? key}) : super(key: key);

  @override
  State<PenjelasanKitab> createState() => _PenjelasanKitab();
}

class _PenjelasanKitab extends State<PenjelasanKitab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background gradient
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
          
          // Positioned image "Buble.png"
          Positioned(
            top: 2,
            right: 1,
            child: Image.asset(
              'assets/img/Buble.png',
              width: 350,
              height: 350,
            ),
          ),
          
          // Title and image at the top
          Positioned(
            top: 10,
            right: 1,
            child: Row(
              children: [
                Text(
                  'Penjelasan Kitab',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(9, 30, 58, 1.0),
                  ),
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/img/Home_menu2.png',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
          
          // Back button
          Positioned(
            top: 95,
            left: 85,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Welcome()),
                );
              },
              child: Image.asset(
                'assets/img/back.png',
                width: 50,
                height: 50,
              ),
            ),
          ),
          
          // Card with list of items
          Positioned(
            top: 250,
            right: 10,
            left: 10,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: 320,
                height: 390,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(height: 35),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Color.fromRGBO(171, 198, 227, 1.0),
                            child: ListTile(
                              leading: Stack(
                                children: [
                                  Image.asset(
                                    'assets/img/logo_no.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 6,
                                    right: 6,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Kitab ${index + 1}', // Nama kitab dengan nomor urut
                                style: TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BabKitab(index + 1), // Pass the index + 1
                                  ),
                                );
                              },
                            ),
                          );
                        },
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
