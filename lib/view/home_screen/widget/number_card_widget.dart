import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class NumberCardWidget extends StatelessWidget {
  const NumberCardWidget({super.key, required this.imagesList});
  final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              'Top 10 Hits',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                imagesList.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: Stack(children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                          // height: 150,
                        ),
                        Container(
                          width: size * 0.3,
                          height: size * 0.62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(imagesList[index]))),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 5,
                      bottom: -25,
                      child: BorderedText(
                        strokeWidth: 10.0,
                        //strokeColor: Colors.red.shade500,
                        child: Text(
                          "${index + 1}",
                          style: const TextStyle(
                            fontSize: 110,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
