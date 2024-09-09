import 'package:flutter/material.dart';

class SubBab extends StatefulWidget {
  final int index;

  SubBab(this.index);

  @override
  _SubBabState createState() => _SubBabState();
}

class _SubBabState extends State<SubBab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Bab ${widget.index}'),
      ),
      body: Center(
        child: Text('Detail Sub Bab ${widget.index}'),
      ),
    );
  }
}
