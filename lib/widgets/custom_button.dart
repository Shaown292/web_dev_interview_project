import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;
  final String? text;
  final TextStyle? textStyle;
  final Function() onTap;

  const CustomButton({
    super.key,
    this.color,
    this.height,
    this.width,
    this.text, this.textStyle, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
        child: Center(
          child: Text(
            text ?? "",
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
