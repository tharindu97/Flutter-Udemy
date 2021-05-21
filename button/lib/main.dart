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
          FlatButton(
            onPressed: (){}, 
            child: Text('Update'),
            color: Colors.blueAccent,
            textColor: Colors.white,
          ),

          RaisedButton(
            onPressed: (){},
            child: Text('Update'),
            color: Colors.lightBlueAccent,
            textColor: Colors.white,
            splashColor: Colors.green,
          ),

          FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.save),
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
          ),

          FloatingActionButton.extended(
            onPressed: (){}, 
            label: Text('Save'),
            icon: Icon(Icons.save),
          )
        ],
      )
    );
  }
}