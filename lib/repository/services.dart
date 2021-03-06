import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:task/models/task.dart';

Future fetchAllTask() async {
  final response = await http.get('https://evening-sea-75226.herokuapp.com/currenttasks');
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    List collections = json.decode(response.body);
    return collections;
//    return collections.map((model) => Task.fromJson(model)).toList();
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load notifications from API');
  }
}