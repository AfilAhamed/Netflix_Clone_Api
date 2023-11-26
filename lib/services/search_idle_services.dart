import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflix_clone/model/tmdb_response_model.dart';
import 'package:netflix_clone/services/constants/api_endpoints.dart';
import '../model/movie_model.dart';

class SearchidleServices {
  List<MovieInfoModel> searchMovies = [];

  Future fetchSearchMovies() async {
    try {
      final Dio dio = Dio();
      final response = await dio.get(ApiEndpoints.top10);

      if (response.statusCode == 200) {
        final data = response.data;
        TMDBApiResponseModel searchDatas = TMDBApiResponseModel.fromjson(data);

        searchMovies = searchDatas.results;

        return searchMovies;
      } else {
        return null;
      }
    } catch (error) {
      log('Error Encountered: $error');
    }
  }
}
