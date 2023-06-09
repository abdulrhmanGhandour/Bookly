import 'package:bookly_app/core/utls/assets.dart';
import 'package:flutter/material.dart';
import '../../../../../constens.dart';



class SlididingText extends StatelessWidget {
  const SlididingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Read free books',
              style: TextStyle(
                fontSize: 20,
                fontFamily: kFontBlackOpsOne,
              ),
            ),
          );
        });
  }
}
