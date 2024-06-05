import 'package:flutter/material.dart';
import 'package:web_dev_interview_project/constant/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final Function()? onTap;
  final bool obsCureText;
  final String? hintText;
  final double? scale;
  final double? prefixIconPadding;

  const CustomTextFormField({
    super.key,
    this.prefixIcon,
    required this.controller,
    this.onTap,
    this.obsCureText = false,
    this.hintText,
    this.suffixIcon,
    this.scale,
    this.prefixIconPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF395AB8).withOpacity(0.1), //color of shadow
            spreadRadius: 0, //spread radius
            blurRadius: 4, // blur radius
            offset: const Offset(0, 3), // changes position of shadow
          ),
          //you can set more BoxShadow() here
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obsCureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
          prefixIcon: Container(
            padding:  EdgeInsets.symmetric(horizontal: prefixIconPadding ?? 5),
            child: Image.asset(
              prefixIcon ?? "",
              scale: scale ?? 0.9,
            ),
          ),
          hintStyle: AppTextStyle.robotoHintTextW400Size17,
          hintText: hintText,
          suffixIcon: suffixIcon ?? const SizedBox(),
        ),
      ),
    );
  }
}
