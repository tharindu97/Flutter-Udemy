import 'package:flutter/material.dart';

import 'package:flutter_overboard/flutter_overboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Overboard Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Overboard Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        finishCallback: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Finish clicked"),
          ));
        },
        buttonColor: Colors.black,
      ),
    );
  }

  final pages = [
    PageModel(
      color: const Color(0xffffc70c),
      titleColor: Colors.black,
      imageAssetPath: 'assets/1.png',
      title: 'Screen 1',
      body: 'Share your ideas with the team',
      doAnimateImage: true,
    ),
    PageModel(
      color: Colors.black,
      titleColor: const Color(0xffffc70c),
      imageAssetPath: 'assets/2.png',
      title: 'Screen 2',
      body: 'See the increase in productivity & output',
      doAnimateImage: true,
    ),
    PageModel(
      color: Colors.black,
      titleColor: const Color(0xffffc70c),
      imageAssetPath: 'assets/1.png',
      title: 'Screen 3',
      body: 'Connect with the people from different places',
      doAnimateImage: true,
    ),
    PageModel.withChild(
      child: Padding(
        padding: EdgeInsets.only(bottom: 25.0),
        child: Image.asset('assets/2.png', width: 300.0, height: 300.0),
      ),
      color: const Color(0xffffc70c),
      titleColor: Colors.black,
      doAnimateChild: false,
    )
  ];
}
