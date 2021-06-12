import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SLDevTalks"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              Text("Tharindu Kavishna", style: TextStyle(fontSize: 18.0),),
              Text("Tharindu Kavishna", style: TextStyle(fontSize: 18.0),),
            ],
          ),
        ),
      ),
    );
  }
}
