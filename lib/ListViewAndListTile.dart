import 'package:flutter/material.dart';

class Listviewandlisttile extends StatefulWidget {
  const Listviewandlisttile({super.key});

  @override
  State<Listviewandlisttile> createState() => _ListviewandlisttileState();
}

class _ListviewandlisttileState extends State<Listviewandlisttile> {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View And List Tile"),
        backgroundColor: Colors.amber,
      ),

      body: ListView(
        padding: EdgeInsets.all(20),
        // scrollDirection: Axis.vertical,
        children: numbers.map((items) {
          return ListTile(
            title: Text("I am Title"),
            subtitle: Text("I am Subtitle"),
            leading: CircleAvatar(),
            trailing: Icon(Icons.done),
          );
        }).toList(),
        // numbers.map((items) {
        //   return Container(
        //     margin: EdgeInsets.all(10),
        //     color: Colors.amberAccent,
        //     width: 100,
        //     alignment: Alignment.center,
        //     child: Text(items.toString()),
        //   );
        // }).toList(),
        //
        // [
        //   for (int i = 0; i <= 15; i++)
        //     Container(
        //       margin: EdgeInsets.symmetric(horizontal: 10),
        //       color: Colors.amberAccent,
        //       width: 100,
        //     ),
        //   //   Container(
        //   //     margin: EdgeInsets.symmetric(horizontal: 10),
        //   //     color: Colors.amberAccent,
        //   //     width: 100,
        //   //   ),
        //   //   Container(
        //   //     margin: EdgeInsets.symmetric(horizontal: 10),
        //   //     color: Colors.amberAccent,
        //   //     width: 100,
        //   //   ),
        // ],
      ),
    );
  }
}
