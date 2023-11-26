import 'package:flutter/material.dart';
import 'package:netflix_clone/view/hot_new_screen.dart/widget/coming_soon_widget.dart';
import 'package:netflix_clone/view/hot_new_screen.dart/widget/everyone_watching_widget.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(children: [
            const Text(
              'Hot & New',
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
          bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              tabs: const [
                Tab(
                  text: "🍿 Coming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                )
              ]),
        ),
        body: const TabBarView(
            children: [ComingSoonWidget(), EveryoneWatchingWidget()]),
      ),
    );
  }
}
