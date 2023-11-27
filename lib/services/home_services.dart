import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:netflix_clone/model/tmdb_response_model.dart';
import 'package:netflix_clone/services/constants/api_key.dart';
import '../model/movie_model.dart';

class PosterImageServices {
  // function for GET poster images based on url

  Future<List<String>> getMoviePosterImage(String url) async {
    try {
      final Dio dio = Dio();
      List<String> imageList = [];

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        TMDBApiResponseModel tmdbResponse = TMDBApiResponseModel.fromjson(data);

        for (MovieInfoModel movieInfo in tmdbResponse.results) {
          if (movieInfo.posterPath != null) {
            imageList.add(
                'https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=$apiKey');
            //  '$baseUrl/movie/{movie_id}/watch/providers?api_key=$apiKey'
          }
        }
        return imageList;
      } else {
        return [];
      }
    } catch (error) {
      log('error encountered ${error.toString()}');
      throw "error";
    }
  }
}
