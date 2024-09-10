import 'package:flutter/material.dart';
import 'package:ruang_kitab/kitab.dart';
import 'package:ruang_kitab/navbar_babkitab.dart';
import 'package:ruang_kitab/penjelasan_subkitab.dart';

class SubBab extends StatefulWidget {
  final int index;

  SubBab(this.index);

  @override
  _SubBabState createState() => _SubBabState();
}

class _SubBabState extends State<SubBab> {
  // Sample items list for demonstration
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavbarKitab(items: items), // Pass the items list here
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Sub Bab ${widget.index}'),
      ),
      body: Column(
        children: <Widget>[
          // Row for the two cards
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0), // Top padding
                  child: Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> Kitab()));// Action when card is tapped
                      },
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            'Daftar Kitab',
                            style: TextStyle(
                              color: Color.fromARGB(255, 3, 32, 65),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8), // Space between the cards
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0), // Top padding
                  child: Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> PenjelasanSubkitab(widget.index)));// Action when card is tapped
                      },
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            'Penjelasan Kitab',
                            style: TextStyle(
                              color: Color.fromARGB(255, 3, 32, 65),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16), // Space below the cards
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 15, // Top 15 items
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ListTile(
                      title: Text('Item ${index + 1}'),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text('Description for item ${index+1}'),
                          ),
                          IconButton(
                            icon: Icon(Icons.play_circle_fill),
                            onPressed: () {
                              // Action when icon is pressed
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
