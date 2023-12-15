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
  // 위 함수를 사용하여 Director가 누군지 출력(ver.1)
  print('Director 는 ${jsonDecode(await goMovieInfo())['director']} 입니다.');

  // Ver.2 - 에러(오타 - 'director') 방지
  print(MovieInfo.fromJson(jsonDecode(await goMovieInfo())).director);
}

class MovieInfo {
  String title;
  String director;
  int year;

  MovieInfo({
    required this.title,
    required this.director,
    required this.year,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'director': director,
      'year': year,
    };
  }

  factory MovieInfo.fromJson(Map<String, dynamic> map) {
    return MovieInfo(
      title: map['title'] as String,
      director: map['director'] as String,
      year: map['year'] as int,
    );
  }
}
