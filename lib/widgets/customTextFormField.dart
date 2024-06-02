import 'package:flutter/material.dart';
import 'package:web_dev_interview_project/constant/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final Function()? onTap;
  final bool obsCureText;
  final String? hintText;

  const CustomTextFormField(
      {super.key,
      this.prefixIcon,
      required this.controller,
      this.onTap,
      this.obsCureText = false,
      this.hintText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TextFormField(
        controller: controller,
        obscureText: obsCureText,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8)),
            prefixIcon: Image.asset(
              prefixIcon ?? "",
            ),
            hintStyle: AppTextStyle.robotoHintTextW400Size17,
            hintText: hintText,
            suffixIcon: suffixIcon ?? const SizedBox()),
      ),
    );
  }
}
