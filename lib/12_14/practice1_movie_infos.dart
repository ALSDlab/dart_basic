class MovieInfos {
  Dates dates;
  int page;
  List<Movie> results;
  int total_pages;
  int total_results;

  MovieInfos({
    required this.dates,
    required this.page,
    required this.results,
    required this.total_pages,
    required this.total_results,
  });

  Map<String, dynamic> toJson() {
    return {
      'dates': dates.toJson(),
      'page': page,
      'results': results.map((e) => e.toJson()),
      'total_pages': total_pages,
      'total_results': total_results,
    };
  }

  factory MovieInfos.fromJson(Map<String, dynamic> map) {
    return MovieInfos(
      dates: Dates.fromJson(map['dates']),
      page: map['page'],
      results: List<Movie>.from(map['results'].map((e) => Movie.fromJson(e))),
      total_pages: map['total_pages'],
      total_results: map['total_results'],
    );
  }
}

class Dates {
  String maximum;
  String minimum;

  Dates({
    required this.maximum,
    required this.minimum,
  });

  Map<String, dynamic> toJson() {
    return {
      'maximum': maximum,
      'minimum': minimum,
    };
  }

  factory Dates.fromJson(Map<String, dynamic> map) {
    return Dates(
      maximum: map['maximum'],
      minimum: map['minimum'],
    );
  }
}

class Movie {
  bool adult;
  String? backdrop_path;
  List<int> genre_ids;
  int id;
  String original_language;
  String original_title;
  String overview;
  double popularity;
  String poster_path;
  String release_date;
  String title;
  bool video;
  double vote_average;
  int vote_count;

  Movie({
    required this.adult,
    required this.backdrop_path,
    required this.genre_ids,
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdrop_path,
      'genre_ids': genre_ids,
      'id': id,
      'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      'poster_path': poster_path,
      'release_date': release_date,
      'title': title,
      'video': video,
      'vote_average': vote_average,
      'vote_count': vote_count,
    };
  }

  factory Movie.fromJson(Map<String, dynamic> map) {
    return Movie(
      adult: map['adult'],
      backdrop_path: map['backdrop_path'],
      genre_ids: List<int>.from(map['genre_ids']),
      id: map['id'],
      original_language: map['original_language'],
      original_title: map['original_title'],
      overview: map['overview'],
      popularity: map['popularity'],
      poster_path: map['poster_path'],
      release_date: map['release_date'],
      title: map['title'],
      video: map['video'],
      vote_average: map['vote_average'],
      vote_count: map['vote_count'],
    );
  }
}
