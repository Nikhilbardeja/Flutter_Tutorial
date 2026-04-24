import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15),
        child: ElevatedButton(onPressed: () {}, child: Text("Bottom Sheet")),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Logout'),
                      content: Text("Are you sure you want to logout?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("No"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Yes"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Show Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  builder: (context) {
                    return ListView(
                      children: [ListTile(title: Text("This is title"))],
                    );
                  },
                );
              },
              child: Text("Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
