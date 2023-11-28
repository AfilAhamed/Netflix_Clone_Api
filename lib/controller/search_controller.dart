import 'package:flutter/material.dart';
import 'package:netflix_clone/model/movie_model.dart';
import 'package:netflix_clone/services/search_result_services.dart';

class SearchsController extends ChangeNotifier {
  String name = '';
  Future<void> search(String query) async {
    name = query;
    getSearchResults(name);
    notifyListeners();
  }

  List<MovieInfoModel> searchResults = [];
  Future<void> getSearchResults(String searchName) async {
    searchResults =
        (await SearchResultServices().fetchSearchResult(searchName))!;
    notifyListeners();
  }
}
