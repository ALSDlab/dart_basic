// Dto 강의 관련 실습 (영화정보)

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/movieDto.dart';

class MovieApi {
  Future<MovieDto> getMovieInfoResult(int page) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=$page'));
    return MovieDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }
}
