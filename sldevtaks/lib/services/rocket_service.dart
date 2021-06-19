import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sldevtaks/config.dart';
import 'package:sldevtaks/data/rocket.dart';

class RocketService {
  static Future<Rocket?> getRocket() async {
    final response = await http.get(
      Uri.parse("${Config.BACKEND_URL}rockets/5e9d0d95eda69973a809d1ec"),);
    if (response.statusCode == 200) {
      return Rocket.fromJson(jsonDecode(response.body));
    }
  }
  static Future<List<Rocket>?> getRockets() async {
    final response = await http.get(
      Uri.parse("${Config.BACKEND_URL}rockets"),);
    if(response.statusCode == 200) {
      return jsonDecode(response.body).map<Rocket>((data) {
        return Rocket.fromJson(data);
      }).toList();
    }
  }
}

