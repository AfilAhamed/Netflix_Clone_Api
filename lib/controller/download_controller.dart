import 'package:flutter/material.dart';
import 'package:netflix_clone/services/download_services.dart';

class DownloadController extends ChangeNotifier {
  DownloadController() {
    getImages();
  }
  List imageList = [];

  Future<void> getImages() async {
    imageList = await DownloadServices().getTrendingMovies();
    notifyListeners();
  }
}
