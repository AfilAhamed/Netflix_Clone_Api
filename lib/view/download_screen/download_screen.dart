import 'package:flutter/material.dart';

import 'widget/download_image_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageList = [
      "https://www.tallengestore.com/cdn/shop/products/Joker_-_Put_On_A_Happy_Face_-_Joaquin_Phoenix_-_Hollywood_English_Movie_Poster_3_de5e4cfc-cfd4-4732-aad1-271d6bdb1587.jpg?v=1579504979",
      "https://imgc.allpostersimages.com/img/posters/john-wick_u-L-F7SH250.jpg",
      "https://images.fandango.com/ImageRenderer/0/0/redesign/static/img/default_poster.png/0/images/masterrepository/other/ant_man_ver5.jpg"
    ];

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          const Text(
            'Downloads',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                size: 30,
              ))
        ]),
      ),
      body: ListView(
        children: [
          const Row(
            children: [
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Smart Downloads',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          const Text('Introducing Downloads fro you'),
          const Text(
              'We will download a personlised slections of movies and shows for you,so there is always somthing to watch on your devies'),
          Container(
            color: Colors.black,
            height: size.height * 0.5,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.40,
                ),
                //download image widget called here
                DownloadImageWidget(
                    angle: 10,
                    imageList: imageList[1],
                    margin: const EdgeInsets.only(left: 130, bottom: 20)),
                DownloadImageWidget(
                    angle: -10,
                    imageList: imageList[2],
                    margin: const EdgeInsets.only(right: 130, bottom: 20)),
                DownloadImageWidget(
                    imageList: imageList[0],
                    margin: const EdgeInsets.only(top: 40))
              ],
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            child: const Text(
              'Setup',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          MaterialButton(
            color: Colors.white,
            onPressed: () {},
            child: const Text(
              'See what you can download',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
