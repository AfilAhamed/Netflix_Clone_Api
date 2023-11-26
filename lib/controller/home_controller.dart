import 'package:flutter/material.dart';
import '../services/constants/api_endpoints.dart';
import '../services/home_services.dart';

class HomeScreenController extends ChangeNotifier {
  HomeScreenController() {
    getTrendingImages();
    getUpcomingImages();
    getTopTenImages();
    getTvPopularImages();
    getPopularMoviesImages();
  }

  //trending Now

  List<String> trendingImages = [];
  Future<void> getTrendingImages() async {
    trendingImages = await PosterImageServices()
        .getMoviePosterImage(ApiEndpoints.trendingMovies);
    notifyListeners();
  }

  //Upcoming Movies

  List<String> upcomingImages = [];
  Future<void> getUpcomingImages() async {
    upcomingImages =
        await PosterImageServices().getMoviePosterImage(ApiEndpoints.upcoming);
    notifyListeners();
  }

  //Top Ten Movies

  List<String> topTenImages = [];
  Future<void> getTopTenImages() async {
    topTenImages =
        await PosterImageServices().getMoviePosterImage(ApiEndpoints.top10);
    notifyListeners();
  }

  //TV Popular

  List<String> tvPopularimages = [];
  Future<void> getTvPopularImages() async {
    tvPopularimages =
        await PosterImageServices().getMoviePosterImage(ApiEndpoints.tvPopular);
    notifyListeners();
  }

  //Popular Movies

  List<String> popularMoviesImages = [];
  Future<void> getPopularMoviesImages() async {
    popularMoviesImages = await PosterImageServices()
        .getMoviePosterImage(ApiEndpoints.moviepopular);
    notifyListeners();
  }
}
