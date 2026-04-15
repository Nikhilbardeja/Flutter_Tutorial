import 'package:flutter/material.dart';

class Navigationdrawerscreen extends StatefulWidget {
  const Navigationdrawerscreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Navigationdrawerscreen();
  }
}

class _Navigationdrawerscreen extends State<Navigationdrawerscreen> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        backgroundColor: Colors.white,

        // leading: IconButton(
        //   onPressed: () {
        //     globalKey.currentState?.openDrawer();
        //   },
        //   icon: Icon(Icons.menu),
        // ),
        actions: [
          IconButton(
            onPressed: () {
              globalKey.currentState?.openEndDrawer();
            },
            icon: Icon(Icons.menu),
            color: Colors.red,
          ),
        ],
      ),
      // endDrawer for right side drawer
      // drawer for left side drawer
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            FlutterLogo(size: 100),
            const SizedBox(height: 15),
            Text(
              "App Title",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),
            ListTile(
              title: Text("Home"),
              onTap: () {},
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {},
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {},
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
