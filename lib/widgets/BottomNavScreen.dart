import 'package:flutter/material.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Bottomnavscreen();
  }
}

class _Bottomnavscreen extends State<Bottomnavscreen> {
  int index = 0;
  List<String> items = ["Home", "Search"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(items[index]), backgroundColor: Colors.amber),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        unselectedFontSize: 14,
        iconSize: 28,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],
      ),

      body: Center(child: Text(items[index], style: TextStyle(fontSize: 30))),
    );
  }
}
