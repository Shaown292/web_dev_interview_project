import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dev_interview_project/app/data/app_colors.dart';

class AppTextStyle {
  static TextStyle robotoBlackW700Size25 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
  );

  static TextStyle robotoHintTextW400Size17 = GoogleFonts.roboto(
    textStyle:  const TextStyle(color: AppColors.hintTextColor, fontSize: 17, fontWeight: FontWeight.w400),
  );

  static TextStyle robotoGreyTextW400Size13 = GoogleFonts.roboto(
    textStyle:  const TextStyle(color: AppColors.hintTextColor, fontSize: 13, fontWeight: FontWeight.w400),
  );
  static TextStyle robotoWhiteTextW500Size17 = GoogleFonts.roboto(
    textStyle:  const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
  );

}