import 'package:first_application/widgets/chat_tab.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabs")),

      body: DefaultTabController(
        //can also define outside the scaffold and make scaffold its child
        // and give TabBar() argument to `bottom:` parameter
        length: 3,
        child: Column(
          children: [
            TabBar(
              // can also change colors of abels and all
              tabs: [
                Tab(text: "Chat"),
                Tab(text: "Status"),
                Tab(text: "Call"),
              ],
            ),
            Flexible(
              child: TabBarView(
                children: [
                  ChatTab(),
                  Center(child: Text("This is Status View")),
                  Center(child: Text("This is Call View")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
