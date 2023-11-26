import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/home_controller.dart';
import 'package:provider/provider.dart';
import 'widget/download_image_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final downloadScreenProvider =
        Provider.of<HomeScreenController>(context, listen: true);
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
      body: downloadScreenProvider.trendingImages.length < 3
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
                const Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 20,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Introducing Downloads fro you',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'We will download a personlised slections of movies and shows for you,so there is always somthing to watch on your devies',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                Consumer<HomeScreenController>(
                  builder: (context, downloadScreenProvider, child) {
                    return Container(
                      color: Colors.black,
                      height: size.height * 0.5,
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.5),
                            radius: size.width * 0.40,
                          ),
                          //download image widget called here
                          DownloadImageWidget(
                              angle: 10,
                              imageList:
                                  downloadScreenProvider.trendingImages[0],
                              margin:
                                  const EdgeInsets.only(left: 130, bottom: 20)),
                          DownloadImageWidget(
                              angle: -10,
                              imageList:
                                  downloadScreenProvider.trendingImages[1],
                              margin: const EdgeInsets.only(
                                  right: 130, bottom: 20)),
                          DownloadImageWidget(
                              imageList:
                                  downloadScreenProvider.trendingImages[2],
                              margin: const EdgeInsets.only(top: 40))
                        ],
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blue,
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Setup',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'See what you can download',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
