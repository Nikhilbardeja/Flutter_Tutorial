import 'package:flutter/material.dart';

class PopupDropdownMenu extends StatefulWidget {
  const PopupDropdownMenu({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PopupDropdownMenuState();
  }
}

class _PopupDropdownMenuState extends State<PopupDropdownMenu> {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Popup Menu"),
  //       actions: [
  //         PopupMenuButton(
  //           onSelected: (value) => print("SELECTED ==== $value"),
  //           itemBuilder: (context) {
  //             return [
  //               PopupMenuItem(value: 1, child: Text("Item 1")),
  //               PopupMenuItem(value: 2, child: Text("Item 2")),
  //               PopupMenuItem(value: 3, child: Text("Item 3")),
  //             ];
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }

  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropDown Menu")),
      body: Center(
        child: DropdownButton(
          value: selected,
          items: [
            for (int i in [1, 2, 3])
              DropdownMenuItem(value: i, child: Text('Item $i')),
          ],
          onChanged: (value) {
            setState(() {
              selected = value!;
            });
          },
        ),
      ),
    );
  }
}
