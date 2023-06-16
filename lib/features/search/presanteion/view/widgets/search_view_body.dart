import 'package:flutter/material.dart';
import 'custom_search_bar.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: [
          CustomSearchBar(),
        ],
      ),
    );
  }
}

