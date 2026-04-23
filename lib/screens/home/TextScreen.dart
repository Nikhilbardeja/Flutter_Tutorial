import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return TextScreenState();
  }
}

class TextScreenState extends State<TextScreen> {
  MaterialColor color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
        backgroundColor: color,
        centerTitle: true,
      ),
      body: Text(
        'Refining your Flutter UI with DejaVuSans',
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
          // Color & Opacity
          color: Colors.blueAccent,
          backgroundColor: Colors.yellow.withOpacity(0.2),

          // Typography
          fontFamily: 'DejaVuSans',
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 2.0,
          wordSpacing: 4.0,

          // Decoration
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.dotted,
          decorationThickness: 2.0,

          // Height (Line height multiplier)
          height: 1.5,

          // Shadows
          shadows: [
            Shadow(
              blurRadius: 10.0,
              color: Colors.black38,
              offset: Offset(2.0, 2.0),
            ),
          ],
        ),
      ),
    );
  }
}
