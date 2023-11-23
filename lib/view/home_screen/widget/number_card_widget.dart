import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class NumberCardWidget extends StatelessWidget {
  const NumberCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top 10 Hits',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
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
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://mir-s3-cdn-cf.behance.net/project_modules/hd/8d8f28105415493.619ded067937d.jpg"))),
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
    );
  }
}
