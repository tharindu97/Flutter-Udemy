import 'package:flutter/material.dart';
import 'package:sldevtaks/data/rocket.dart';

class RocketArguments {
  final Rocket rocket;
  RocketArguments({required this.rocket});
}

class RocketPage extends StatelessWidget {
  static const routeName = '/rocket';
  @override
  Widget build(BuildContext context) {
    final RocketArguments rocketArguments =
        ModalRoute.of(context)?.settings.arguments as RocketArguments;
    final Rocket rocket = rocketArguments.rocket;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rocket"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Text(
            rocket.name,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            rocket.description,
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5.0,
          ),
          Image.network(rocket.image),
        ],
      ),
    );
  }
}
