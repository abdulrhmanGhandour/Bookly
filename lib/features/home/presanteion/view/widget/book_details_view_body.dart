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
          height: MediaQuery.of(context).size.height * .35,
          child: const CustomBookImage(),
        )
      ],
    );
  }
}
