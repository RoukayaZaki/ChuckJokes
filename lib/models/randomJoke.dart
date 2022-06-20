//import 'package:json_annotation/json_annotation.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;
export 'package:untitled/main.dart';
Future<String> getRandomJoke() async {

  String randomJoke = 'https://api.chucknorris.io/jokes/random';
  var response = (await http.get(Uri.parse(randomJoke)));

  Map<String, dynamic> jokeID = Map<String, dynamic>.from(json.decode(response.body));
  print(jokeID["value"]);
  return jokeID["value"] as String;

}