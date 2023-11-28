import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/controller/search_controller.dart';
import 'package:netflix_clone/view/search_screen/widget/search_idle_widget.dart';
import 'package:netflix_clone/view/search_screen/widget/search_result_widget.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchsController>(context);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                onChanged: (value) {
                  searchProvider.search(value);
                },
                itemSize: 22,
                itemColor: Colors.grey,
                backgroundColor: Colors.grey.withOpacity(0.4),
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(
                height: 13,
              ),
              Expanded(
                  child: searchProvider.name.isEmpty
                      ? const SearchIdleWidget()
                      : const SearchResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
