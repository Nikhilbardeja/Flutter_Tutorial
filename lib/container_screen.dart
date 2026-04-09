import 'package:flutter/material.dart';



class ContainerScreen extends StatelessWidget{
    const ContainerScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text("Container Screen"), backgroundColor: Colors.amber),
            body: Container(
                height: 100,
                width: 200,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                constraints: BoxConstraints(
                    minHeight: 50,
                    maxWidth: 50,
                ),
                
                // color: Colors.blue,
                alignment: Alignment.center,
                // child: Text("Mera Text"),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    // borderRadius: BorderRadius.circular(20), //only with shape BoxShape.circle
                    border: Border.all(color: Colors.red, width:2),
                    boxShadow: [
                        BoxShadow(color: Colors.black.withAlpha(50), blurRadius: 2, offset: Offset(0, 0), )
                    ],
                    shape: BoxShape.rectangle,
                    gradient: LinearGradient(colors: [
                        Colors.blue,
                        Colors.deepOrange,
                        Colors.green
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft
                    
                    ),
                    image: DecorationImage(image: NetworkImage("https://tse4.mm.bing.net/th/id/OIP.X2foZIYsdBUE3kf7rARjHQHaHa?rs=1&pid=ImgDetMain&o=7&rm=3"), fit: BoxFit.contain)

                ),
            ),
        );
    }
}