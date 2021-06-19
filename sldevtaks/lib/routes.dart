import 'package:flutter/material.dart';
import 'package:sldevtaks/pages/about.dart';
import 'package:sldevtaks/pages/home.dart';
import 'package:sldevtaks/pages/rocket.dart';
import 'package:sldevtaks/pages/rockets.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (_) => Home(),
  About.routeName: (_) => About(),
  RocketPage.routeName: (_) => RocketPage(),
  Rockets.routeName: (_) => Rockets(),
};