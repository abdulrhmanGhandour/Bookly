import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loding_indicator.dart';
import 'package:bookly_app/features/home/presanteion/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utls/app_router.dart';
import 'featured_books_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccsess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .push(AppRouter.kBookDetailsView, extra: state.books[index]);
                },
                child: CustomBookImage(
                  imageUrl:
                      state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
            ),
          );
        } else if (state is FeaturedBooksFailuer) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
