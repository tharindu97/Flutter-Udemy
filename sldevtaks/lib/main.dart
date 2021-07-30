import 'package:flutter/material.dart';
import 'package:sldevtaks/routes.dart';
import 'package:sldevtaks/theme.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  void toggleDarkMode(bool newState) {
    setState(() {
      isDark = newState;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SLDevtalks',
      debugShowCheckedModeBanner: false,
      theme: DevTheme.lightTheme,
      darkTheme: DevTheme.darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      // initialRoute: Home.routeName,
      routes: routes,
      home: Home(isDark: isDark, toggleDarkMode: toggleDarkMode,),
    );
  }
}

