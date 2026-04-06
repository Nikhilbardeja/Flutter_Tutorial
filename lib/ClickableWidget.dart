import 'package:flutter/material.dart';


class Clickablewidget extends StatelessWidget{
	const Clickablewidget({super.key});


	@override
  Widget build(BuildContext context) {
    return Scaffold(
		appBar: AppBar(
			title: Text("Clickable Widget"),
		),

		body: Column(
			children: [
				GestureDetector(// does not give a click effect when clicked
				// gives more properties than InkWell
					onTap: (){},
					onDoubleTap: (){},
					onLongPress: (){},
					// and so many gesture attributes
					child: Text("Widget"),
				),

				InkWell( // gives a click effect when clicked
				// less properties than GestureDetector
					onTap: (){},
					onDoubleTap: (){},
					onLongPress: (){},
					// and so many gesture attributes
					child: Text("Widget"),
				)
			],
		),
	);
  }
}