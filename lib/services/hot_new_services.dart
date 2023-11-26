import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:netflix_clone/services/constants/api_endpoints.dart';
import '../model/movie_model.dart';
import '../model/tmdb_response_model.dart';

class HotandNewServices {
  List<MovieInfoModel> comingSoonList = [];
  List<MovieInfoModel> everyOnesWatchingList = [];

  Future fetchComingSoon() async {
    try {
      final Dio dio = Dio();
      final response = await dio.get(ApiEndpoints.upcoming);
      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        TMDBApiResponseModel tmdbApiResponse =
            TMDBApiResponseModel.fromjson(data);
        comingSoonList = tmdbApiResponse.results;
        return comingSoonList;
      } else {
        return [];
      }
    } catch (error) {
      log('Error Encountered: $error');
      throw error.toString();
    }
  }

  Future fetchEveryOnesWatching() async {
    try {
      final Dio dio = Dio();
      final response = await dio.get(ApiEndpoints.moviepopular);
      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        TMDBApiResponseModel tmdbApiResponse =
            TMDBApiResponseModel.fromjson(data);
        everyOnesWatchingList = tmdbApiResponse.results;
        return everyOnesWatchingList;
      } else {
        return [];
      }
    } catch (error) {
      log('Error Encountered: $error');
      throw error.toString();
    }
  }
}
