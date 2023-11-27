import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/bottombar_controller.dart';
import 'package:netflix_clone/helpers/colors.dart';
import 'package:netflix_clone/view/download_screen/download_screen.dart';
import 'package:netflix_clone/view/hot_new_screen.dart/hot_new_screen.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/search_screen/search_screen.dart';
import 'package:provider/provider.dart';

class BottomBarWidget extends StatelessWidget {
  BottomBarWidget({super.key});

  final pages = [
    const HomeScreen(),
    const FeedsScreen(),
    const DownloadScreen(),
    const SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomProvider = Provider.of<BottomBarController>(context);
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(bottomProvider.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int value) {
              bottomProvider.getIndex(value);
            },
            currentIndex: bottomProvider.currentIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: AppColors().backgroundColor,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Views'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: 'Downloads'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined), label: 'Search')
            ]),
      ),
    );
  }
}
