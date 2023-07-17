import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              size: 30,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
