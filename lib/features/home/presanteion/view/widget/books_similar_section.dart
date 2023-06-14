import 'package:bookly_app/features/home/presanteion/view/widget/similar_book_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utls/styles.dart';

class BokksSimilarSection extends StatelessWidget {
  const BokksSimilarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'You can also like',
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w600,
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
      ],
    );
  }
}
