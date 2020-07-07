import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:protestant_bot/modules/Card.modules.dart';

Future<Card> getCardData() async {
  final http.Response response =
      await http.get('http://192.168.0.16:3333/?limit=10');
  // await http.get('http://localhost:3333/?limit=10');

  if (response.statusCode == 200) {
    Card.fromJson(json.decode(response.body));
  }

  return throw Exception('Failed to get data card');
}
