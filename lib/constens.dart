
import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff100B20);
const appName = 'BOOKLY';
const kTransitionDuration = Duration(milliseconds: 200);
const kFontBlackOpsOne = 'BlackOpsOne';
const kFontLora = 'Lora';
const kStarColor = 0xffFFDD4F;






class LogoApp extends StatelessWidget {
  const LogoApp({super.key, required this.fontSize});

  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      appName,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontFamily: kFontBlackOpsOne,
      ),
    );
  }
}
