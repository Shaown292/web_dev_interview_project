import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dev_interview_project/app/data/app_colors.dart';

class AppTextStyle {
  static TextStyle robotoBlackW700Size25 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
  );

  static TextStyle robotoHintTextW400Size17 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: AppColors.hintTextColor,
        fontSize: 17,
        fontWeight: FontWeight.w400),
  );

  static TextStyle robotoGreyTextW400Size13 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: AppColors.hintTextColor,
        fontSize: 13,
        fontWeight: FontWeight.w400),
  );
  static TextStyle robotoWhiteTextW500Size17 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
  );
  static TextStyle robotoBlackTextW300Size17 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: AppColors.createAccountTextColor,
        fontSize: 17,
        fontWeight: FontWeight.w300),
  );
  static TextStyle robotoBlueTextW700Size17 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: AppColors.logInColor, fontSize: 17, fontWeight: FontWeight.w700),
  );
  static TextStyle robotoBlueTextW700Size22 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: AppColors.productListColor,
        fontSize: 22,
        fontWeight: FontWeight.w700),
  );
  static TextStyle latoGreyTextW400Size15 = GoogleFonts.lato(
    textStyle: const TextStyle(
        color: AppColors.filterColor,
        fontSize: 15,
        fontWeight: FontWeight.w400),
  );
  static TextStyle latoLightGreyTextW400Size15 = GoogleFonts.lato(
    textStyle: const TextStyle(
      color: AppColors.lightGreyColor,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.lineThrough,
      decorationColor: AppColors.lightGreyColor,
    ),
  );
  static TextStyle robotoBlackTextW400Size16 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
  );
  static TextStyle robotoBlackTextW700Size18 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
  );
}
