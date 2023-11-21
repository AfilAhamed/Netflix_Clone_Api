import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
          fontFamily: GoogleFonts.montserrat().fontFamily,
          appBarTheme:
              AppBarTheme(backgroundColor: AppColors().backgroundColor),
          scaffoldBackgroundColor: AppColors().backgroundColor),
      home: const BottomBarWidget(),
    );
  }
}
