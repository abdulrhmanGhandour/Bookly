import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constens.dart';
import '../../../../../core/utls/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});

  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(kStarColor),
          size: 14,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
        '($count)' ,
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white.withOpacity(.5),
          ),
        )
      ],
    );
  }
}
