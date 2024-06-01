import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final Color? fillColor;
  final String? hintText;
  final bool focusBorderActive;
  final bool enableBorderActive;
  final bool obsCureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function()? iconOnTap;
  final TextInputType? textInputType;
  final Color? enableBorderActiveColor;
  final Function()? onTap;
  final EdgeInsets? contentPadding;
  final TextStyle? hintTextStyle;
  final TextStyle? textStyle;
  final InputBorder? inputBorder;

  const CustomTextFormField({
    this.controller,
    this.fillColor,
    this.hintText,
    this.focusBorderActive = false,
    this.enableBorderActive = false,
    this.suffixIcon,
    this.iconOnTap,
    this.obsCureText = false,
    this.textInputType,
    this.enableBorderActiveColor,
    this.onTap,
    super.key,
    this.contentPadding,
    this.hintTextStyle,
    this.inputBorder,
    this.prefixIcon, this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TextFormField(
        style: textStyle ,
        controller: controller,
        obscureText: obsCureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
            filled: true,
            border: inputBorder,
            fillColor: fillColor ?? const Color(0xFFFDFBFF),
            hintText: hintText ?? 'Enter text',
            hintStyle: hintTextStyle,
            prefix: prefixIcon,
            suffixIcon: InkWell(
                onTap: iconOnTap, child: suffixIcon ?? const SizedBox()),
            focusedBorder: focusBorderActive
                ? OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xFF635976).withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(8.0),
            )
                : null,
            enabledBorder: enableBorderActive
                ? OutlineInputBorder(
              borderSide: BorderSide(
                color: enableBorderActiveColor ??
                    const Color(0xFF635976).withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(8.0),
            )
                : null,
            contentPadding: contentPadding),
      ),
    );
  }
}

