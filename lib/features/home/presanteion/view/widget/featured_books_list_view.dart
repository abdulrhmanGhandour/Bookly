import 'package:flutter/material.dart';
import 'featured_books_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const FeaturedBooksItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }
}