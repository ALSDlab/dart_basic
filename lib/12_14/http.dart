import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Todo.dart';

void main() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  final jsonString = response.body;
  Map<String, dynamic> json = jsonDecode(jsonString);
  print(json['title']);

  final Todo todo = await getTodo2(2);
  print(todo.title);

  List<Todo> todos = await getTodos();
  todos.forEach((e) => print('$e.toJson'));

}

Future<Todo> getTodo1(int id) async {
  // 요청
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
// jsonString
  final jsonString = response.body;
// to Map
  final json = jsonDecode(jsonString);
  // 모델클래스로 변환
  return Todo.fromJson(json);
}

Future<Todo> getTodo2(int id) async {
  // 요청
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  return Todo.fromJson(jsonDecode(response.body));
}

Future<List<Todo>> getTodos() async {
  // 요청
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  // jsonString
  final jsonString = response.body;
  // to Map
  final List jsonList = jsonDecode(jsonString) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();
}


//
// void getSample() async {
//   final response =
//   await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
//   final jsonString = response.body;
//   Map<String, dynamic> json = jsonDecode(jsonString);
//   print(json['title']);
// }
//
// void postSample() async {
//   final response =
//   await http.post(Uri.parse(
//       'https://jsonplaceholder.typicode.com/posts'), body: {
//   "userId": 2, "title": "바보야", "body": "asdfasdfasdf",},
//   );
//
// final jsonString = response.body;
// Map<String, dynamic> json = jsonDecode(jsonString);
//
//
// }
