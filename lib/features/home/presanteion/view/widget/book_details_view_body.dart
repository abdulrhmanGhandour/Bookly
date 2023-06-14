import 'package:bookly_app/constens.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:bookly_app/features/home/presanteion/view/widget/rating_book_item.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar_details.dart';
import 'featured_books_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarBookDetails(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .33,
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30
              .copyWith(fontFamily: kFontLora, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.75),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
       const BookRating(
        mainAxisAlignment: MainAxisAlignment.center,
       ),
      ],
    );
  }
}
