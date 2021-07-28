import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return Container(color: Colors.yellow);
          }
          return Container(color: Colors.purple);
        },
      ),
    );
  }
}
