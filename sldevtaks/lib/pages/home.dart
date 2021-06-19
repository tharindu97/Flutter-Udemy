import 'package:flutter/material.dart';
import 'package:sldevtaks/pages/about.dart';
import 'package:sldevtaks/pages/rocket.dart';
import 'package:sldevtaks/pages/rockets.dart';

class Home extends StatelessWidget {
  static const routeName = './home';
  final Function(bool)? toggleDarkMode;
  final bool? isDark;
  Home({this.toggleDarkMode, this.isDark});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SLDevTalks"),
        actions: [
          Switch(value: isDark ?? false, onChanged: toggleDarkMode)
        ],
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
            Text("ආයුබෝවන් Tharindu!", style: TextStyle(fontSize: 48.0),),
            Text("WelCome to our live room", style: TextStyle(fontSize: 28.0),),
            ElevatedButton(
                onPressed: () {
                   Navigator.of(context).pushNamed(About.routeName, arguments: AboutArguments(name: 'Tharindu kavishna'),);
                },
                child: Text("About"),
            ),
            OutlinedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(Rockets.routeName);
                },
                child: Text("Rockets")
            )
          ],
        ),
      ),
    );
  }
}
