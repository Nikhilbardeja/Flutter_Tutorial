import 'package:first_application/navigation/home_screen.dart';
import 'package:first_application/providers/app_provider.dart';
import 'package:first_application/providers/my_provider.dart';
import 'package:first_application/widgets/my_provider_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: Consumer<AppProvider>(
        builder: (context, provider, child) => MaterialApp(
          themeMode: provider.mode,
          darkTheme: ThemeData.dark(),
          home: ChangeNotifierProvider(
            create: (context) => MyProvider(),
            child: MyProviderScreen(),
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

// this is how to apply notifier on a specific Screen

// return MaterialApp(
    //   home: ChangeNotifierProvider(
    //     create: (context) => MyProvider(),
    //     child: MyProviderScreen(),
    //   ),
    //   debugShowCheckedModeBanner: false,
    // );

// arguments and settings for theme in MaterialApp Class

// initialRoute: '/',
      // routes: myRoutes(),
      // onGenerateRoute: (RouteSettings settings) => myGenerateRoutes(settings),

      // darkTheme: ThemeData.dark().copyWith(),
      // dartTheme: ThemeData(
      //  define your settings for dark theme
      // )
      // themeMode: ThemeMode.system,
      //   theme: ThemeData(
      //     primaryColor: Colors.amber,

      //     elevatedButtonTheme: ElevatedButtonThemeData(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.amber,
      //         foregroundColor: Colors.white,
      //       ),
      //     ),

      //     textTheme: TextTheme(displayLarge: TextStyle(fontSize: 200)),
      //     iconTheme: IconThemeData(color: Colors.red, size: 50),
      //     appBarTheme: AppBarTheme(
      //       backgroundColor: Colors.red,
      //       centerTitle: true,
      //       iconTheme: IconThemeData(color: Colors.white),
      //     ),
      //     // scaffoldBackgroundColor: Colors.black,
      //   ),
