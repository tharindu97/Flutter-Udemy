import 'package:flutter/material.dart';
import 'package:sldevtaks/data/rocket.dart';
import 'package:sldevtaks/pages/rocket.dart';

class RocketsList extends StatelessWidget {
  late final List<Rocket> rockets;
  RocketsList({required this.rockets});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: rockets.length,
        itemBuilder: (context, index){
          Rocket rocket = rockets[index];
          return Card(
            child: ListTile(
              title: Text(
                rocket.name,
                style: Theme.of(context).textTheme.headline4,
              ),
              subtitle: Text(
                rocket.firstFlight,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.of(context).pushNamed(RocketPage.routeName, arguments: RocketArguments(rocket: rocket),);
              },
            ),
          );
        }
    );
  }
}