import 'package:finance/constants/style.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final int? maxLine;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const CustomText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.maxLine,
      this.color,
      this.fontWeight,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? ink01,
        fontSize: fontSize ?? 18,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}
