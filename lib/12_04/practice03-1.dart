// 1) 대한민국의 도시 이름모음(순서 상관없음): Set
// 2) 10명 학생의 시험 점수 : List
// 3) 대한민국의 도시별 인구수(순서 상관없음): Map

// 연습문제 2-2

class Person {
  String name;

  Person({required this.name});
}

void main () {
  final person1 = Person(name: '홍길동');
  final person2 = Person(name: '한석봉');

  List<String> people = [person1.name, person2.name];

  print(people);
}
