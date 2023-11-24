import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                  child: Container(
                    width: size * 0.3,
                    height: size * 0.62,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://mir-s3-cdn-cf.behance.net/project_modules/hd/8d8f28105415493.619ded067937d.jpg"))),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
