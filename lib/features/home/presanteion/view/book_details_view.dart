import 'package:bookly_app/features/home/data/model/book%20model/book_model.dart';
import 'package:bookly_app/features/home/presanteion/view/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manger/similar books/similar_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.books});

  final BookModel books;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: widget.books.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          books: widget.books,
        ),
      ),
    );
  }
}
