import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<StatefulWidget> createState() {
    return ButtonsState();
  }
}

class ButtonsState extends State<Buttons> {
  String title = "Buttons view";
  bool centerTitle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
        centerTitle: centerTitle,
      ),

      //   body: ElevatedButton.icon(
      //     onPressed: () {},
      //     label: Text("My Button"),
      //     icon: Icon(Icons.home, size: 30, color: Colors.red),
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.blueAccent,
      //       foregroundColor: Colors.white,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(30),
      //       ),
      //       elevation: 8,
      //       //   fixedSize: Size(200, 100),
      //       //   maximumSize: Size(200, 100),
      //       iconAlignment: IconAlignment.end,
      //     ),
      //   ),
      //   body: TextButton(
      //     onPressed: () {},
      //     onLongPress: () {},
      //     child: Text("Mera Button"),
      //   ),
      body: IconButton(
        onPressed: () {
          setState(() {
            centerTitle = !centerTitle;
          });
        },
        icon: Icon(Icons.home, size: 30),
        style: IconButton.styleFrom(backgroundColor: Colors.amber),
        color: Colors.blueGrey,
      ),
    );
  }
}
