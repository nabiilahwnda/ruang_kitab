import 'package:flutter/material.dart';
import 'package:ruang_kitab/sub_bab.dart';

class PenjelasanSubkitab extends StatefulWidget {
  final int index;

  PenjelasanSubkitab(this.index);

  @override
  _PenjelasanSubBabKitabState createState() => _PenjelasanSubBabKitabState();
}

class _PenjelasanSubBabKitabState extends State<PenjelasanSubkitab> {

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
                  'Kitab ${widget.index}', // Display the kitab number
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(9, 30, 58, 1.0),
                  ),
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/img/Bab_Kitab.png',
                  width: 200,
                  height: 150,
                ),
              ],
            ),
          ),

          // Back button
          Positioned(
            top: 95,
            left: 45,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
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
            top: 265, // Adjust to ensure it's below the buttons
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
                    SizedBox(height: 15),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Color.fromRGBO(171, 198, 227, 1.0),
                            child: ListTile(
                              leading: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'assets/img/logo_no.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Positioned(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 2,
                                      ),
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
                                'Sub Bab Kitab ${index + 1}',
                                style: TextStyle(color: Colors.white),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SubBab(index + 1),
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
