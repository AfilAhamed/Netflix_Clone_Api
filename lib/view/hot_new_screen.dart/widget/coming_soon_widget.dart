import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/hot_new_controller.dart';
import 'package:netflix_clone/model/movie_model.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/api_key.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //provider class
    final provider = Provider.of<HotAndNewController>(context);
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: ListView.builder(
        itemCount: provider.upcoming.length,
        itemBuilder: (context, index) {
          //data handling
          final MovieInfoModel data = provider.upcoming[index];

          return Row(
            children: [
              const SizedBox(
                width: 50,
                height: 420,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Feb',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      '11',
                      style: TextStyle(
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: size.width - 50,
                height: 420,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.network(
                          'https://image.tmdb.org/t/p/w500${data.posterPath}?api_key=$apiKey',
                          fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width - 50,
                            child: Text(
                              data.orginalTitle.toString(),
                              style: const TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                          ),
                          // Spacer(),
                          // Row(
                          //   children: [
                          //     Column(
                          //       children: [
                          //         Icon(
                          //           Icons.notifications,
                          //           color: Colors.white,
                          //           size: 20,
                          //         ),
                          //         Text(
                          //           'Remaind Me',
                          //           style: TextStyle(fontSize: 11),
                          //         )
                          //       ],
                          //     ),
                          //     SizedBox(
                          //       width: 20,
                          //     ),
                          //     Column(
                          //       children: [
                          //         Icon(
                          //           Icons.info_outline_rounded,
                          //           color: Colors.white,
                          //           size: 20,
                          //         ),
                          //         Text(
                          //           'Info',
                          //           style: TextStyle(fontSize: 11),
                          //         )
                          //       ],
                          //     ),
                          //     SizedBox(
                          //       width: 20,
                          //     )
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text('Coming On Friday'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      data.overview.toString(),
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
