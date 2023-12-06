// 1) 대한민국의 도시 이름모음(순서 상관없음): Set
// 2) 10명 학생의 시험 점수 : List
// 3) 대한민국의 도시별 인구수(순서 상관없음): Map

// 연습문제 2-2

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}

void main() {
  final person1 = Person(name: '홍길동', age: 20);
  final person2 = Person(name: '한석봉', age: 25);

  // List에 담기
  List<String> peopleName = [person1.name, person2.name];
  List<int> peopleAge = [person1.age, person2.age];
  //for 문 사용(1)
  for (int i = 0; i < peopleName.length; i++) {
    print('${peopleName[i]}의 나이는 ${peopleAge[i]}살');
  }

  // Map 활용하기
  Map<String, int> people = {
    person1.name: person1.age,
    person2.name: person2.age
  };
  // for 문 사용(2)
  for (final person in people.entries) {
    print('${person.key}의 나이는 ${person.value}살');
  }
  // forEach 사용
  for (var person in people.entries) {
    print('${person.key}의 나이는 ${person.value}살');
  }
}
