import 'package:flutter/material.dart';

import '../../../../../constens.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              AppName,
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                fontFamily: KFontBlackOpsOne,
              ),
            ),
            Text(
              'read free books',
              style: TextStyle(
                fontSize: 20,
                fontFamily: KFontBlackOpsOne,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
