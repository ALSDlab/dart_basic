// 1. 다음과 같은 사원 클래스와 부서 클래스가 있습니다.
//    총무부 리더 '홍길동(41세)'의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
//    직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

import 'dart:convert';
import 'dart:io';

class Employee {
  String _name;
  int _age;

  Employee({
    required String name,
    required int age,
  })  : _name = name,
        _age = age;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      name: map['name'],
      age: map['age'],
    );
  }
}

class Department {
  String _name;
  Employee _leader;

  Department({
    required String name,
    required Employee leader,
  })  : _name = name,
        _leader = leader;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  Employee get leader => _leader;

  set leader(Employee value) {
    _leader = value;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader,
    };
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
      name: map['name'],
      leader: map['leader'],
    );
  }
}

void writeToFile(final source, final target) {
  target.writeAsStringSync(jsonEncode(source.toJson()));
}

void main() {
  // 인스턴스 생성 및 직렬화.
  Employee worker = Employee.fromJson({'name': '홍길동', 'age': 41});

  // target 파일(company.txt)
  File file = File('lib/12_11/company.txt');

  // 파일에 저장하기
  writeToFile(worker, file);

  // 파일 읽기
  String employeeJson = file.readAsStringSync();
  Employee who = Employee.fromJson(jsonDecode(employeeJson));
  print(who.toJson().toString());
}
