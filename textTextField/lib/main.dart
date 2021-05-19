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
      body: Column(
        children: [

          Text(
            "Text !!! Coders. you are here with this new event based on Flutter!!!",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300,
              backgroundColor: Colors.amberAccent,
              letterSpacing: 1.0,
              wordSpacing: 2.0,
              shadows: [
                Shadow(
                  color: Colors.lightBlueAccent,
                  offset: Offset(2.0, 2.0),
                )
              ]
            ),
          ),

          RichText(
            text: TextSpan(
              text: 'Hello!!!!',
              style: TextStyle(
                color: Colors.amber
              ),
              children: <TextSpan> [
                TextSpan(
                  text: 'Coders',
                  style: TextStyle(
                    color: Colors.red
                  ),
                )
              ]
            )
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                hintText: 'Enter Your Name'
              ),
            ),
          )
        ],
      ),
    );
  }
}