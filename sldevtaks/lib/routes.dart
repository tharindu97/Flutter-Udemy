import 'package:flutter/material.dart';
import 'package:sldevtaks/pages/about.dart';
import 'package:sldevtaks/pages/home.dart';
import 'package:sldevtaks/pages/rocket.dart';
import 'package:sldevtaks/pages/rockets.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (_) => const Home(),
  About.routeName: (_) => const About(),
  RocketPage.routeName: (_) => const RocketPage(),
  Rockets.routeName: (_) => Rockets(),
};