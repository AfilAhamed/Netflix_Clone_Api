import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:netflix_clone/model/tmdb_response_model.dart';
import 'package:netflix_clone/core/constants/api_endpoints.dart';
import '../model/movie_model.dart';

class SearchResultServices {
  List<MovieInfoModel> searchResult = [];

  Future<List<MovieInfoModel>?> fetchSearchResult(String query) async {
    try {
      final Dio dio = Dio();
      final response = await dio.get(ApiEndpoints.searchMovie + query);

      if (response.statusCode == 200) {
        final data = response.data;
        TMDBApiResponseModel searchDatas = TMDBApiResponseModel.fromjson(data);

        searchResult = searchDatas.results;

        return searchResult;
      } else {
        return null;
      }
    } catch (error) {
      log('Error Encountered: $error');
      return null;
    }
  }
}
