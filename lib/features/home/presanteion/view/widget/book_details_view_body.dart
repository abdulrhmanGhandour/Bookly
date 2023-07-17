import 'package:bookly_app/features/home/data/model/book%20model/book_model.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';
import 'books_similar_section.dart';
import 'custom_app_bar_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.books});

  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomAppBarBookDetails(),
              BooksDetailsSection(
                books: books,
              ),
              const Expanded(child: SizedBox(height: 50)),
              const BokksSimilarSection(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
