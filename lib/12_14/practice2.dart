import 'dart:convert';
import 'practice1_movie_infos.dart';
import 'package:http/http.dart' as http;

import 'practice2_movie_contents.dart';


// 2. 영화의 상세정보를 모델에 담고 json 형태로 출력하기


// 먼저 연습문제 1의 영화정보를 가져온다.
Future<List> getMovies(int page) async {
  // 요청
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=$page'));
  return MovieInfos.fromJson(jsonDecode(response.body)).results;
}


// 영화정보의 영화 ID 정보를 URL에 넣고 상세정보 가져온다.
Future<MovieContents> getMovieContent(int movieId) async {
  // 요청
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  return MovieContents.fromJson(jsonDecode(response.body));
}

void main() async{
  // 영화정보를 모델클래스에 담는다.
  List movies = await getMovies(1);
  // 모델클래스에 담긴 영화정보를 ID 별로 가져온다.
  for (int i = 0; i< movies.length; i++){
    int movieId = movies[i].id;
    final content = await getMovieContent(movieId);
    print(jsonEncode(content.toJson()));

    // 테스트
    // print('제목: ${content.title}');
    // print('줄거리: ${content.overview}');
  }
}