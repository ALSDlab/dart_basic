import 'dart:convert';

Future<String> goMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}

void main() async {
  // 위 함수를 사용하여 Director가 누군지 출력
  print('Director 는 ${jsonDecode(await goMovieInfo())['director']} 입니다.');
}
