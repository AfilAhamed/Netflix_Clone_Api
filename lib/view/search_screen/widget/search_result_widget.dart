import 'package:flutter/material.dart';

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
          child: GridView.builder(
            itemCount: 12,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7),
            itemBuilder: (context, index) {
              return Container(
                width: size * 0.3,
                height: size * 0.62,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.tallengestore.com/cdn/shop/products/Joker_-_Put_On_A_Happy_Face_-_Joaquin_Phoenix_-_Hollywood_English_Movie_Poster_3_de5e4cfc-cfd4-4732-aad1-271d6bdb1587.jpg?v=1579504979'),
                    )),
              );
            },
          ),
        ),
      ],
    );
  }
}
