import 'package:bookly_app/features/search/presanteion/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utls/styles.dart';
import 'custom_search_bar.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

