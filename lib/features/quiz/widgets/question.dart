import 'package:flutter/material.dart';

import 'package:question_project/themes/quiz_text_styles.dart';

class Question extends StatelessWidget {
  final String text;

  const Question({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: QuizTextStyles.textTitleRegular,
    );
  }
}
