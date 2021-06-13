import 'package:flutter/material.dart';
import 'package:sldevtaks/pages/about.dart';

class Home extends StatelessWidget {
  static const routeName = './home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ElevatedButton(
                onPressed: () async{
                  String text = await Navigator.of(context).pushNamed(About.routeName, arguments: AboutArguments(name: 'Tharindu kavishna'),) as String;
                  print(text);
                },
                child: Text("About"),
            ),
          ],
        ),
      ),
    );
  }
}
