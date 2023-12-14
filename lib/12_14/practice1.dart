import 'dart:convert';
import 'practice1_movie_infos.dart';
import 'package:http/http.dart' as http;

Future<MovieInfos> getMovies(int page) async {
  // 요청
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=$page'));
  return MovieInfos.fromJson(jsonDecode(response.body));
}


void main()async{

  final MovieInfos movies = await getMovies(1);
  print(movies.toJson());
}