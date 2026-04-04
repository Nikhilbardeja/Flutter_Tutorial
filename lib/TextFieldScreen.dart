import 'package:flutter/material.dart';

class Textfieldscreen extends StatefulWidget{
	const Textfieldscreen({super.key});

	@override
  State<StatefulWidget> createState() {
    return _Textfieldscreen();
  }
}



class _Textfieldscreen extends State<Textfieldscreen>{

	TextEditingController email = TextEditingController();
	String appBarText = "Text Field";
	bool obscureText = true;

	@override
  Widget build(BuildContext context) {
    return Scaffold(
		appBar: AppBar(
			title: Text(appBarText),
			backgroundColor: Colors.green,
		),
		body: Column(
			children: [
				SizedBox(height: 10),
				TextField(
					controller: email,		
					keyboardType: TextInputType.emailAddress,
					decoration: InputDecoration(
						hintText: 'Enter your email',
						labelText: "Email",
						border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
						prefixIcon: Icon(Icons.email),
						suffixIcon: IconButton(onPressed: (){setState((){obscureText = !obscureText;});}, icon: Icon(Icons.close))
					),
				),
				SizedBox(height: 10),
				TextField(
					maxLines: 7,
					decoration: InputDecoration(
						hintText: "Describe yourself",
						border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
					),
				),
				SizedBox(height: 10),
				ElevatedButton(onPressed: (){
					setState((){appBarText= email.text;});
					// email.text = "Nacho re ";
				}, child: Text("Login"))
			],
		),
	);
    
  }
}