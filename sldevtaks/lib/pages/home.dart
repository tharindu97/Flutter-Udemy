import 'package:flutter/material.dart';
import 'package:sldevtaks/pages/about.dart';
import 'package:sldevtaks/pages/rockets.dart';

class Home extends StatelessWidget {
  static const routeName = './home';
  final Function(bool)? toggleDarkMode;
  final bool? isDark;
  const Home({Key? key, this.toggleDarkMode, this.isDark}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SLDevTalks"),
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
            const SizedBox(
              width: double.infinity,
            ),
            const Text("ආයුබෝවන් Tharindu!", style: TextStyle(fontSize: 48.0),),
            const Text("WelCome to our live room", style: TextStyle(fontSize: 28.0),),
            ElevatedButton(
                onPressed: () {
                   Navigator.of(context).pushNamed(About.routeName, arguments: AboutArguments(name: 'Tharindu kavishna'),);
                },
                child: const Flexible(child: Text("About")),
            ),
            OutlinedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(Rockets.routeName);
                },
                child: const Text("Rockets")
            )
          ],
        ),
      ),
    );
  }
}
