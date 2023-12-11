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
      'leader': leader.toJson(),
    };
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
      name: map['name'],
      leader: Employee.fromJson(map['leader']),
    );
  }
}

// 파일 쓰기
void writeFileAsync(filePath, source) {
  try {
    filePath.writeAsStringSync(jsonEncode(source.toJson()));
    print('파일이 성공적으로 쓰여졌습니다.');
  } catch (e) {
    print('파일을 쓰는 도중 오류 발생: $e');
  }
}

void main() {
  // 인스턴스 생성
  Employee worker = Employee(name: '홍길동', age: 41);
  Department leader = Department(name: '총무부', leader: worker);

  // target 파일(company.txt)
  File file = File('lib/12_11/company.txt');

  // 직렬화 및 파일에 저장하기
  writeFileAsync(file, worker);

  // 파일 읽기
  String workerJson = file.readAsStringSync();
  Employee who = Employee.fromJson(jsonDecode(workerJson));
  print(who.toJson().toString());

  // 직렬화 및 파일에 저장하기
  writeFileAsync(file, leader);

  // 파일 읽기
  String leaderJson = file.readAsStringSync();
  Department whoIsLeader = Department.fromJson(jsonDecode(leaderJson));
  print(whoIsLeader.toJson().toString());
}
