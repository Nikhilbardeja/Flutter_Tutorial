import 'package:first_application/providers/multi_prov1.dart';
import 'package:first_application/providers/multi_prov2.dart';
import 'package:first_application/providers/multi_prov3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MultiProvScreen extends StatelessWidget {
  const MultiProvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MultiProv1()),
        ChangeNotifierProvider(create: (context) => MultiProv2()),
        ChangeNotifierProvider(create: (context) => MultiProv3()),
      ],
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Multi Provider Screen"),
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                children: [
                  Consumer<MultiProv1>(
                    builder: (context, provider, child) {
                      return Text(
                        provider.count.toString(),
                        style: Theme.of(context).textTheme.displayLarge,
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<MultiProv1>(
                        context,
                        listen: false,
                      ).increment();
                    },
                    child: Text("Counter 1"),
                  ),
                  Consumer<MultiProv2>(
                    builder: (context, provider, child) {
                      return Text(
                        provider.count.toString(),
                        style: Theme.of(context).textTheme.displayLarge,
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<MultiProv2>(
                        context,
                        listen: false,
                      ).increment();
                    },
                    child: Text("Counter 2"),
                  ),
                  Consumer<MultiProv3>(
                    builder: (context, provider, child) {
                      return Text(
                        provider.count.toString(),
                        style: Theme.of(context).textTheme.displayLarge,
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<MultiProv3>(
                        context,
                        listen: false,
                      ).increment();
                    },
                    child: Text("Counter 3"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
