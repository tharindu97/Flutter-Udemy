import 'package:flutter/material.dart';

class AboutArguments{
  final String name;
  AboutArguments({required this.name});
}

class About extends StatelessWidget {
  static const routeName = "/about";
  @override
  Widget build(BuildContext context) {
    final AboutArguments aboutArguments = ModalRoute.of(context)?.settings.arguments as AboutArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Container(
        child: Column(
          children: [
            Text("About Page: ${aboutArguments.name}", style: Theme.of(context).textTheme.headline4,),
            OutlinedButton(
              onPressed: (){
                Navigator.of(context).pop("From About");
              },
              child: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
