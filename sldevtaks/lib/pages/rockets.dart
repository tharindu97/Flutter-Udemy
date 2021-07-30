import 'package:flutter/material.dart';
import 'package:sldevtaks/components/rocket_list.dart';
import 'package:sldevtaks/data/rocket.dart';
import 'package:sldevtaks/services/rocket_service.dart';

class Rockets extends StatelessWidget {
  static const String routeName = "/rockets";
  final RocketService _rocketService;
  Rockets() : _rocketService = RocketService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rockets"),
      ),
      body: FutureBuilder<List<Rocket>?>(
        future: _rocketService.getRockets(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Error...!"),
            );
          } else if (snapshot.hasData) {
            List<Rocket>? rockets = snapshot.data;
            return rockets != null
                ? RocketsList(rockets: rockets)
                :  const Center(
                    child: Text("Nothing to show rockets!.."),
                  );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
