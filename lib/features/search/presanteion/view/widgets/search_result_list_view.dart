import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loding_indicator.dart';
import 'package:bookly_app/features/search/presanteion/manger/search%20cubit/search_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_search_widget.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchViewCubit, SearchViewState>(
      builder: (context, state) {
        if (state is SearchViewSuccsess) {
          return ListView.builder(
            itemCount: state.book.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookSearchItem(books: state.book[index]),
              );
            },
          );
        } else if (state is SearchViewFailuer) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
