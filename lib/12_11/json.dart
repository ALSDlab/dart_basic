import 'dart:convert';
import 'dart:io';

void main() {
  final json = {
    "name": "John Smith",
    "email": "john@example.com",
    "age": 10,
  };
  final user = User(name: 'aaa', email: 'bbb', age: 11);
  print(json.runtimeType);
  print(user.toJson());
  User user2 = User.fromJson({'name': '수퍼맨', 'email': 'aaaa', 'age': 5});

  print(user2.toJson());

  File file = File('lib/12_11/user.txt');
  file.writeAsStringSync(jsonEncode(user2.toJson()));

// append 모드
//   file.writeAsStringSync(jsonEncode(user2.toJson()), mode: FileMode.append);

  String userJson = file.readAsStringSync();
  User user3 = User.fromJson(jsonDecode(userJson));
  print(user3.toJson().toString());
}

class User {
  String name;
  String email;
  int age;

  User({
    required this.name,
    required this.email,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'age': age,
    };
  }

  // 역직렬화
  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      email: map['email'],
      age: map['age'],
    );
  }
}
