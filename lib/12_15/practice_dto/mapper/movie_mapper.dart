import '../dto/movieDto.dart';
import '../model/movie.dart';

extension MovieToResults on Results {
  Movie toResult() {
    return Movie(
      movieName: title ?? '제목없음',
      content: overview ?? '내용없음',
      adultLevel: adult ?? false,
      motherLang: originalLanguage ?? '-',
      openedDate: releaseDate ?? '미정',
    );
  }
}
