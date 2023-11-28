import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/search_controller.dart';
import 'package:netflix_clone/model/movie_model.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/api_key.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Movies & Tv',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Consumer<SearchsController>(
            builder: (context, searchProvider, child) {
              return searchProvider.searchResults.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.builder(
                      itemCount: searchProvider.searchResults.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 6,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.7),
                      itemBuilder: (context, index) {
                        MovieInfoModel data =
                            searchProvider.searchResults[index];
                        return Container(
                          width: size * 0.3,
                          height: size * 0.62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500${data.posterPath}?api_key=$apiKey'),
                              )),
                        );
                      },
                    );
            },
          ),
        ),
      ],
    );
  }
}
