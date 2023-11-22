import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/view/search_screen/widget/search_idle_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                itemSize: 22,
                itemColor: Colors.grey,
                backgroundColor: Colors.grey.withOpacity(0.4),
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(
                height: 13,
              ),
              const Expanded(child: SearchIdleWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
