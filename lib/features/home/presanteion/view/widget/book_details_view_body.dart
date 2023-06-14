import 'package:flutter/material.dart';
import 'books_details_section.dart';
import 'books_similar_section.dart';
import 'custom_app_bar_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomAppBarBookDetails(),
              BooksDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              BokksSimilarSection(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
