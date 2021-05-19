import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.0,
        width: 100.0,
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 2, color: Colors.black),
          boxShadow: [
            BoxShadow(
              color: Colors.orange,
              offset: Offset(6.0, 6.0)
            )
          ]
        ),
        child: Text('Container Widget'),
        transform: Matrix4.rotationX(0.1),
      ),
    );
  }
}