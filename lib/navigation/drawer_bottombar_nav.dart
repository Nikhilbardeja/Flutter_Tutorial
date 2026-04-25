import 'package:first_application/navigation/home_screen.dart';
import 'package:first_application/navigation/profile_screen.dart';
import 'package:first_application/navigation/settings_screen.dart';
import 'package:flutter/material.dart';

class DrawerBottombarNav extends StatefulWidget {
  const DrawerBottombarNav({super.key});

  @override
  State<StatefulWidget> createState() => _DrawerBottombarNavState();
}

class _DrawerBottombarNavState extends State<DrawerBottombarNav> {
  List<Widget> widgets = [
    HomeScreen(),
    ProfileScreen(name: "name"),
    SettingsScreen(name: "name", age: 5),
  ];

  int currentIndex = 0;
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          currentIndex == 0
              ? "Home"
              : currentIndex == 1
              ? "Profile"
              : "Settings",
        ),
      ),
      body: widgets[currentIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 50),
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            ListTile(
              selected: currentIndex == 0,
              onTap: () {
                globalKey.currentState?.closeDrawer();
                setState(() {
                  currentIndex = 0;
                });
              },
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              selected: currentIndex == 1,
              onTap: () {
                globalKey.currentState?.closeDrawer();
                setState(() {
                  currentIndex = 1;
                });
              },
              title: Text("Profile"),
              leading: Icon(Icons.account_circle),
            ),
            ListTile(
              selected: currentIndex == 2,
              onTap: () {
                globalKey.currentState?.closeDrawer();
                setState(() {
                  currentIndex = 2;
                });
              },
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
