import 'package:flutter/material.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Searches',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView.builder(
            //shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8),
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
