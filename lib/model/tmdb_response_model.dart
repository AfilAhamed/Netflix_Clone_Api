import 'package:netflix_clone/model/movie_model.dart';

class TMDBApiResponseModel {
  int page = 0;
  List<MovieInfoModel> results = [];
  int totalPages = 0;
  int totalResults = 0;

  TMDBApiResponseModel.fromjson(Map data) {
    page = data['page'];
    results = (data['results'] as List)
        .map((item) => MovieInfoModel.fromJson(item))
        // ignore: unnecessary_null_comparison
        .where((movieInfo) => movieInfo != null)
        .toList();
    totalPages = data['total_pages'];
    totalResults = data['total_results'];
  }
}
