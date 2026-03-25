import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Screen"), backgroundColor: Colors.blue),

      body: Image(
        // image: AssetImage("assets/images/image.jpeg"),
        image: NetworkImage(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhLrq4s4xwmnVwnLBDcBPH7CZY4SSto1DoDA&s",
        ),
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.contain,
        repeat: ImageRepeat.noRepeat,
        alignment: Alignment.centerRight,
      ),
    );
  }
}
