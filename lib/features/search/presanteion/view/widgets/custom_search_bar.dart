import 'package:bookly_app/features/search/presanteion/manger/search%20cubit/search_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        BlocProvider.of<SearchViewCubit>(context)
            .fetchSearchBook(bookName: value);
      },
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 20,
        ),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      color: Colors.white,
    ),
  );
}
