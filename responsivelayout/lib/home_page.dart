import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: Center(
          child: Container(
            color: Colors.yellow,
            height: 100.0,
            width: 150,
          ),
        ),
        tablet: Center(
          child: Container(
            color: Colors.red,
            height: 100.0,
            width: 150,
          ),
        ),
      ),
    );
  }
}
