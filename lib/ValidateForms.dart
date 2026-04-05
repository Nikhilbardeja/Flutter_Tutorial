import 'package:flutter/material.dart';


class Validateforms extends StatefulWidget{
	const Validateforms({super.key});

  @override
  State<Validateforms> createState() => _ValidateformsState();
}

class _ValidateformsState extends State<Validateforms> {

	TextEditingController name = TextEditingController();
	TextEditingController email = TextEditingController();
	TextEditingController phone = TextEditingController();
	TextEditingController password = TextEditingController();

	InputDecoration Function(String) decoration = (String hintText) => InputDecoration(
		hintText: hintText,
		border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
	);

	final formKey = GlobalKey<FormState>();

	String? Function(String? field) validator (String field) =>  (value){if (value == null || value.isEmpty){
									return "Please Enter Your $field";
								}
								return null;};

	@override
  Widget build(BuildContext context) {
    return Scaffold(
		appBar: AppBar(
			title: Text("Form Validation"),
			backgroundColor: Colors.amberAccent,
		),

		body: Form(
				key: formKey,

				  child: Column(
					children: [
						SizedBox(height: 20),
						TextFormField(
							controller: name,
							decoration: decoration("name"),
							validator: validator("Name"),
						),
						TextFormField(
							controller: phone,
							decoration: decoration("Phone"),
							validator: (value){
								if(value==null||value.isEmpty){
									return "Please enter Phone";
								}
								if(value.length != 10) return "Length must be 10";
							}
						),
						TextFormField(
							controller: email,
							decoration: decoration("Email"),
							validator: validator("Email"),
						),
						TextFormField(
							controller: password,
							decoration: decoration("Password"),
							validator: validator("Password"),
						),
						ElevatedButton(onPressed: (){
							if(formKey.currentState!.validate()){

							}	
						}, 
						child: Text("Register"))
					],
				  ),
				),
	);
  }
}