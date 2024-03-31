import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:question_project/themes/quiz_colors.dart';
import 'package:question_project/themes/quiz_size.dart';

class QuizTextStyles {
  static final textTitleBlack = GoogleFonts.prompt(
    fontSize: QuizSize.XL,
    fontWeight: FontWeight.w500,
    color: QuizColors.black,
  );

  static final textTitleWhite = GoogleFonts.prompt(
    fontSize: QuizSize.XL,
    fontWeight: FontWeight.w500,
    color: QuizColors.white,
  );

  static final textTitleRegular = GoogleFonts.prompt(
    fontSize: QuizSize.L,
    fontWeight: FontWeight.w500,
    color: QuizColors.black,
  );

  static final textBody = GoogleFonts.prompt(
    fontSize: QuizSize.M,
    fontWeight: FontWeight.w300,
    color: QuizColors.black,
  );
}
