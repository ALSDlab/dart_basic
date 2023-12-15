import 'data_source/movie_api.dart';
import 'mapper/movie_mapper.dart';
import 'model/movie.dart';

void main() async {
  // Api 통신
  final api = MovieApi();

  //Json 을 Dto로
  final dto = await api.getMovieInfoResult(3);

  //Dto에서 필요한 내용을 mapper를 통해 모델 클래스로 변환
  List<Movie> movies = dto.results?.map((e) => e.toResult()).toList() ?? [];
  print(movies.toString());
}
