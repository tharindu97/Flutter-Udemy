import 'package:flutter/material.dart';
import 'package:sldevtaks/pages/about.dart';
import 'package:sldevtaks/pages/home.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (_) => Home(),
  About.routeName: (_) => About(),
};