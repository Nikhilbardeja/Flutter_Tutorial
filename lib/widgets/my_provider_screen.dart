import 'package:first_application/providers/app_provider.dart';
import 'package:first_application/providers/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProviderScreen extends StatelessWidget {
  const MyProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider Screen"), centerTitle: true),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<MyProvider>(context, listen: false).increment(0);
        },
        child: Icon(Icons.add),
      ),

      body: Center(
        child: Consumer2<MyProvider, AppProvider>(
          builder: (context, myProvider, appProvider, child) => Column(
            children: [
              Text(
                myProvider.count.toString(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                (myProvider.count + 1).toString(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                (myProvider.count + 2).toString(),
                style: Theme.of(context).textTheme.displayLarge,
              ),

              ElevatedButton(
                onPressed: () {
                  Provider.of<AppProvider>(context, listen: false).swithTheme();
                },
                child: Icon(appProvider.icon),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
