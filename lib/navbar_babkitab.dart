import 'package:flutter/material.dart';
import 'package:ruang_kitab/sub_bab.dart';

class NavbarKitab extends StatelessWidget {
  final List<String> items;

  const NavbarKitab({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              // Navigate to BabKitab page or other pages
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubBab(index + 1), // Adjust if needed
                ),
              );
            },
          );
        },
      ),
    );
  }
}
