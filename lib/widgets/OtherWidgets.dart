import 'package:flutter/material.dart';

class OtherWidgets extends StatefulWidget {
  const OtherWidgets({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Otherwidgets();
  }
}

class _Otherwidgets extends State<OtherWidgets> {
  bool isConnected = false;
  String? groupValue = "one";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Widgets"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("Switch's Valuae = $isConnected"),
            // Switch(
            //   activeThumbColor: Colors.white,
            //   activeTrackColor: Colors.green,
            //   inactiveTrackColor: Colors.red,
            //   inactiveThumbColor: Colors.white,
            //   value: isConnected,
            //   onChanged: (value) {
            //     setState(() {
            //       isConnected = value;
            //     });
            //   },
            // ),
            // SwitchListTile(
            //   value: isConnected,
            //   onChanged: (value) {},
            //   title: Text("My Title"),
            // ),
            // Checkbox(
            //   value: isConnected,
            //   onChanged: (value) {
            //     setState(() {
            //       isConnected = value!;
            //     });
            //   },
            // ),

            // CheckboxListTile(
            //   value: isConnected,
            //   onChanged: (value) {
            //     setState(() {
            //       isConnected = value!;
            //     });
            //   },
            //   title: Text("Title"),
            // ),

            // RadioMenuButton(
            //   value: 'one',
            //   groupValue: groupValue,
            //   onChanged: (value) {
            //     setState(() {
            //       groupValue = value;
            //     });
            //   },
            //   child: Text("one"),
            // ),
            // RadioMenuButton(
            //   value: 'two',
            //   groupValue: groupValue,
            //   onChanged: (value) {
            //     setState(() {
            //       groupValue = value;
            //     });
            //   },
            //   child: Text("two"),
            // ),
            // RadioMenuButton(
            //   value: 'three',
            //   groupValue: groupValue,
            //   onChanged: (value) {
            //     setState(() {
            //       groupValue = value;
            //     });
            //   },
            //   child: Text("three"),
            // ),
            // Wrap(
            //   spacing: 10,
            //   runSpacing: 30,

            //   children: [
            //     Container(color: Colors.blue, height: 100, width: 100),
            //     Container(color: Colors.black, height: 100, width: 100),
            //     Container(color: Colors.red, height: 100, width: 100),
            //     Container(color: Colors.amber, height: 100, width: 100),
            //     Container(color: Colors.green, height: 100, width: 100),
            //   ],
            // ),
            CircularProgressIndicator(strokeWidth: 5, value: 0.4),
            LinearProgressIndicator(value: 0.5),
          ],
        ),
      ),
    );
  }
}
