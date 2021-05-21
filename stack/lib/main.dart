import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      body: Center(
        child: Stack(
          fit: StackFit.passthrough,
          overflow: Overflow.visible,
          children: [
            Container(
              height: 300.0,
              width: 400.0,
              color: Colors.greenAccent,
              child: Center(
                child: Text('Hellow!!!!!!'),
              ),
            ),
            Positioned(
              top: 15.0,
              left: 25.0,
              child: Text('Tharindu Kavishna'),
            ),           
          ],
        ),
      ),
    );
  }
}