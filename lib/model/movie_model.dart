class MovieInfoModel {
  String? title;
  String? posterPath;
  String? releaseDate;
  String? orginalTitle;
  String? overview;

  MovieInfoModel({
    required this.title,
    required this.posterPath,
    required this.releaseDate,
    required this.orginalTitle,
    required this.overview,
  });

  MovieInfoModel.fromJson(Map data) {
    title = data["title"];
    posterPath = data["poster_path"];
    releaseDate = data["release_date"];
    orginalTitle = data["original_title"];
    overview = data["overview"];
  }
}
