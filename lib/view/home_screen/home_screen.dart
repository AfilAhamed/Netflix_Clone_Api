import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/home_controller.dart';
import 'package:netflix_clone/view/home_screen/widget/card_widget.dart';
import 'package:netflix_clone/view/home_screen/widget/number_card_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //provider class
    final homeScreenProvider = Provider.of<HomeScreenController>(context);

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            CarouselSlider(
              options: CarouselOptions(
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlayInterval: const Duration(seconds: 5),
                  height: size.height * 0.6,
                  autoPlay: true),
              items: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.6,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://www.tallengestore.com/cdn/shop/products/Joker_-_Put_On_A_Happy_Face_-_Joaquin_Phoenix_-_Hollywood_English_Movie_Poster_3_de5e4cfc-cfd4-4732-aad1-271d6bdb1587.jpg?v=1579504979'))),
                ),
              ],
            ),
            //top
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0),
                  ])),
              height: 130,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Tv Shows',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Movies',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 100,
                  width: size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.9)
                      ])),
                )),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    children: [
                      Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  TextButton.icon(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow_rounded,
                      size: 30,
                      color: Colors.black,
                    ),
                    label: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Play',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const Column(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        'Info',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          // Cards
          MainCard(
              title: 'Trending Now',
              imageList: homeScreenProvider.trendingImages),
          MainCard(
            title: 'Upcoming Movies',
            imageList: homeScreenProvider.upcomingImages,
          ),
          NumberCardWidget(imagesList: homeScreenProvider.topTenImages),
          const SizedBox(
            height: 4,
          ),
          MainCard(
            title: 'Tv Popular',
            imageList: homeScreenProvider.tvPopularimages,
          ),
          MainCard(
            title: 'Popular Movies',
            imageList: homeScreenProvider.popularMoviesImages,
          ),
        ],
      ),
    );
  }
}
