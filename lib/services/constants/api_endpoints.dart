import 'api_key.dart';

class ApiEndpoints {
  static const trendingMovies = "$baseUrl/trending/all/day?api_key=$apiKey";

  static const upcoming =
      "$baseUrl/movie/upcoming?api_key=$apiKey&language=en-US&page=1";

  static const top10 =
      '$baseUrl/discover/tv?include_adult=false&language=en-US&page=1&sort_by=vote_average.desc&vote_count.gte=200&api_key=$apiKey';

  static const moviepopular =
      '$baseUrl/movie/popular?api_key=$apiKey&language=en-US&page=1';

  static const tvPopular =
      "$baseUrl/tv/popular?api_key=$apiKey&language=en-US&page=1";

  //static const search = "";
}
