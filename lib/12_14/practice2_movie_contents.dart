class MovieContents {
  String title;
  String overview;
  bool adult;
  String original_language;
  String release_date;
  int runtime;

  MovieContents({
    required this.title,
    required this.overview,
    required this.adult,
    required this.original_language,
    required this.release_date,
    required this.runtime,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'overview': overview,
      'adult': adult,
      'original_language': original_language,
      'release_date': release_date,
      'runtime': runtime,
    };
  }

  factory MovieContents.fromJson(Map<String, dynamic> map) {
    return MovieContents(
      title: map['title'],
      overview: map['overview'],
      adult: map['adult'],
      original_language: map['original_language'],
      release_date: map['release_date'],
      runtime: map['runtime'],
    );
  }
}
