import 'package:flutter/material.dart';
import 'best_se;;er_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const BestSellerListItem();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
      itemCount:8,
    );
  }
}
