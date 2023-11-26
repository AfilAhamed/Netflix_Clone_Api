import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/hot_new_controller.dart';
import 'package:netflix_clone/model/movie_model.dart';
import 'package:provider/provider.dart';
import '../../../services/constants/api_key.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HotAndNewController>(context);
    return ListView.builder(
      itemCount: provider.everyonesWatching.length,
      itemBuilder: (context, index) {
        final MovieInfoModel data = provider.everyonesWatching[index];
        return Padding(
          padding: const EdgeInsets.only(top: 25, left: 15, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.orginalTitle.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data.overview.toString(),
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: Image.network(
                        fit: BoxFit.cover,
                        'https://image.tmdb.org/t/p/w500${data.posterPath}?api_key=$apiKey'),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black.withOpacity(0.3),
                      child: const Icon(
                        Icons.volume_off,
                        size: 27,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        'Play',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
