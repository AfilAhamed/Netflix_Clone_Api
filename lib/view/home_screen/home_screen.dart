import 'package:flutter/material.dart';
import 'package:netflix_clone/view/home_screen/widget/card_widget.dart';
import 'package:netflix_clone/view/home_screen/widget/number_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: const [
            MainCard(title: 'Trending Now'),
            MainCard(title: 'Released in the past year'),
            NumberCardWidget(),
            MainCard(title: 'Tense Drama'),
            MainCard(title: 'South Indian Cinema'),
          ],
        ),
      ),
    );
  }
}
