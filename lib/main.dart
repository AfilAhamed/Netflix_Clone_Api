import 'package:flutter/material.dart';
import 'package:netflix_clone/helpers/colors.dart';
import 'package:netflix_clone/view/widget/bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix_Clone',
      theme: ThemeData(
          // textTheme: TextTheme(
          //   bodyMedium: TextStyle(
          //     color: Colors.white,
          //   ),
          // ),
          scaffoldBackgroundColor: AppColors().backgroundColor
          // useMaterial3: true,
          ),
      home: const BottomBarWidget(),
    );
  }
}
