import 'package:flutter/material.dart';

const Color KPrimaryColor = Color(0xff100B20);
const KFontBlackOpsOne = 'BlackOpsOne';
const AppName ='BOOKLY';
const KTransitionDuration = Duration(milliseconds: 200);




class LogoApp extends StatelessWidget {
  const LogoApp({
    super.key,
    required this.fontSize 
  });

final double fontSize;
  @override
  Widget build(BuildContext context) {
    return  Text(
      AppName,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontFamily: KFontBlackOpsOne,
      ),
    );
  }
}
