import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constens.dart';
import '../../../../../core/utls/app_router.dart';
import '../../../../../core/utls/styles.dart';
import '../../../../home/data/model/book model/book_model.dart';
import '../../../../home/presanteion/view/widget/featured_books_item.dart';
import '../../../../home/presanteion/view/widget/rating_book_item.dart';

class BookSearchItem extends StatelessWidget {
  const BookSearchItem({
    super.key,
    required this.books,
  });

  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView ,extra:books );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: books.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      books.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kFontLora,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(books.volumeInfo.authors![0],
                        style: Styles.textStyle14),
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                          rating: books.volumeInfo.averageRating ?? 0.0,
                          count: books.volumeInfo.ratingsCount ?? 0
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
