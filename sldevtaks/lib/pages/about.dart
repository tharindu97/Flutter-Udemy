import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutArguments{
  final String name;
  AboutArguments({required this.name});
}

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);
  static const routeName = "/about";

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  int count = 0;

  void onIncrement() {
    setState(() {
      count++;
    });
  }

  void onDecrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AboutArguments aboutArguments = ModalRoute.of(context)?.settings.arguments as AboutArguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Text("About Page: ${aboutArguments.name}", style: Theme.of(context).textTheme.headline4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: onDecrement,
                  child: const Icon(Icons.remove),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("The count : $count", style: GoogleFonts.chilanka(fontSize: 30), ),
                ),
                ElevatedButton(
                  onPressed: onIncrement,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
