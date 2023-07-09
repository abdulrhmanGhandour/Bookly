import 'package:flutter/material.dart';
 //import '../../../../home/presanteion/view/widget/best_se;;er_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
         // child: BookListItem(),
         child: Text(''),

        );
      },
    );
  }
}
