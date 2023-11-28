import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../controller/home_controller.dart';

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
          child: Consumer<HomeScreenController>(
            builder: (context, provider, child) {
              return provider.topTenImages.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.builder(
                      itemCount: provider.topTenImages.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    NetworkImage(provider.topTenImages[index]),
                              )),
                        );
                      },
                    );
            },
          ),
        ),
      ],
    );
  }
}
