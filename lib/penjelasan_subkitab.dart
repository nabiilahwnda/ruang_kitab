import 'package:flutter/material.dart';
import 'package:ruang_kitab/kitab.dart';
import 'package:ruang_kitab/navbar_jlskitab.dart';
import 'package:ruang_kitab/penjelasan_kitab.dart';

class PenjelasanSubkitab extends StatefulWidget {
  final int index;

  const PenjelasanSubkitab(this.index, {Key? key}) : super(key: key);

  @override
  _PenjelasanSubBabState createState() => _PenjelasanSubBabState();
}

class _PenjelasanSubBabState extends State<PenjelasanSubkitab> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavbarJlskitab(items: items),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Penjelasan Kitab ${widget.index}'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Kitab(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: const Center(
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
              const SizedBox(width: 8),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PenjelasanKitab(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: const Center(
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
          const SizedBox(height: 16),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ListTile(
                      title: Text('Item ${index + 1}'),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text('Description for item ${index + 1}'),
                          ),
                          IconButton(
                            icon: const Icon(Icons.play_circle_fill),
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
