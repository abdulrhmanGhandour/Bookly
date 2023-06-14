import 'package:bookly_app/core/utls/styles.dart';
import 'package:bookly_app/features/home/presanteion/view/widget/rating_book_item.dart';
import 'package:bookly_app/features/home/presanteion/view/widget/similar_book_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../constens.dart';
import 'book_action.dart';
import 'custom_app_bar_details.dart';
import 'featured_books_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .33,
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 35,
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
          const SizedBox(
            height: 24,
          ),
          const BookAction(),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: const SimilarBooksListView(),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

