import 'package:flutter/material.dart';



class ColumnRow extends StatelessWidget{
	const ColumnRow({super.key});

	@override
  Widget build(BuildContext context) {
    return Scaffold(
		appBar: AppBar(
			title: Text("Row And Column"),
			backgroundColor: Colors.cyanAccent,
		),

		body: Column( // just replace it with Row() other things are same
			
			spacing: 20,
			mainAxisAlignment: MainAxisAlignment.center,
			// crossAxisAlignment: CrossAxisAlignment.stretch,
			crossAxisAlignment: CrossAxisAlignment.center,
			children: [
				Text("Text 1"), Text("2"), Text("3"), ElevatedButton(onPressed: (){}, child: Text("data"))
			],
		),
	);
  }
}