import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loding_indicator.dart';
import 'package:bookly_app/features/home/presanteion/manger/newset%20books%20cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_se;;er_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccsess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListItem(books: state.books[index]),
              );
            },
          );
        } else if (state is NewsetBooksFailuer) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
