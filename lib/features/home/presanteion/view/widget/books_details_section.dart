import 'package:bookly_app/features/home/data/model/book%20model/book_model.dart';
import 'package:bookly_app/features/home/presanteion/view/widget/rating_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../constens.dart';
import '../../../../../core/utls/styles.dart';
import 'book_action.dart';
import 'featured_books_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.books});

  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .33,
          child: CustomBookImage(
            imageUrl: books.volumeInfo.imageLinks?.smallThumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Text(
          books.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(
            fontFamily: kFontLora,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          books.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.75),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: books.volumeInfo.averageRating??0,
          count: books.volumeInfo.ratingsCount??0,
        ),
        const SizedBox(
          height: 24,
        ),
        const BookAction(),
      ],
    );
  }
}
