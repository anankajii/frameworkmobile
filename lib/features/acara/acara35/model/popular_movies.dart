class PopularMovies {
  int page;
  int totalResults;
  int totalPages;
  List<Results> results;

  PopularMovies({
    required this.page,
    required this.totalResults,
    required this.totalPages,
    required this.results,
  });

  factory PopularMovies.fromJson(Map<String, dynamic> json) {
    return PopularMovies(
      page: json['page'],
      totalResults: json['total_results'],
      totalPages: json['total_pages'],
      results: (json['results'] as List)
          .map((e) => Results.fromJson(e))
          .toList(),
    );
  }
}

class Results {
  int id;
  String title;
  String posterPath;
  String overview;
  double voteAverage;

  Results({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.overview,
    required this.voteAverage,
  });

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      id: json['id'],
      title: json['title'],
      posterPath: json['poster_path'],
      overview: json['overview'],
      voteAverage:
      (json['vote_average'] as num).toDouble(),
    );
  }
}