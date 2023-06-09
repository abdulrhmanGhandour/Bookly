import 'package:flutter/material.dart';
import '../../../../../core/utls/assets.dart';

class FeaturedBooksItem extends StatelessWidget {
  const FeaturedBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.KTestImeg),
          ),
        ),
      ),
    );
  }
}