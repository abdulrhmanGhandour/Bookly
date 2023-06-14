import 'package:flutter/material.dart';

import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
    this.fontSize,
  });

  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
