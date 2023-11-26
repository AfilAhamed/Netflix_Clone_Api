// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:netflix_clone/model/tmdb_response_model.dart';
// import 'package:netflix_clone/services/constants/api_endpoints.dart';
// import 'package:netflix_clone/services/constants/api_key.dart';
// import '../model/movie_model.dart';

// class DownloadServices {
//   Future<List<String>> getTrendingMovies() async {
//     try {
//       final Dio dio = Dio();
//       List<String> imageList = [];

//       final response = await dio.get(ApiEndpoints.trendingMovies);

//       if (response.statusCode == 200) {
//         Map<String, dynamic> data = response.data;
//         TMDBApiResponseModel tmdbResponse = TMDBApiResponseModel.fromjson(data);

//         for (MovieInfoModel movieInfo in tmdbResponse.results) {
//           if (movieInfo.posterPath != null) {
//             imageList.add(
//                 'https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=$apiKey');
//           }
//         }
//         return imageList;
//       } else {
//         return [];
//       }
//     } catch (error) {
//       log('error encountered ${error.toString()}');
//       throw "error";
//     }
//   }
// }
