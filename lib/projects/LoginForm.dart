import 'package:flutter/material.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Loginfromstate();
  }
}

class _Loginfromstate extends State<Loginform> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(title: Text("Login"), backgroundColor: Colors.indigo),
      body: Form(
        key: formKey,
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.all(40),

              children: [
                SizedBox(height: 50),
                FlutterLogo(size: 100),
                SizedBox(height: 20),
                Text(
                  "Login Here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your Email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your Password";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 0),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(alignment: Alignment.centerRight),
                  child: Text("Forgot Password?"),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.all(12),
                    ),
                    child: Text("Login"),
                  ),
                ),
                SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Do not have an account? Register Now"),
                  ),
                ),
              ],
            ),

            Positioned(
              top: -130,
              right: -130,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent.withAlpha(120),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Positioned(
              top: -97,
              right: -97,
              child: Container(
                height: 225,
                width: 225,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent.withAlpha(150),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
