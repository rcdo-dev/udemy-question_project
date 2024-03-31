import 'package:flutter/material.dart';

import 'package:question_project/features/quiz/widgets/response_button.dart';
import 'package:question_project/themes/quiz_colors.dart';
import 'package:question_project/themes/quiz_text_styles.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final double? width;
  final String buttonText;
  final VoidCallback onPressed;

  const ResultPage({
    super.key,
    required this.result,
    this.width,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.height / 36.0,
          ),
          Text(
            result,
            style: QuizTextStyles.textTitleBlack,
          ),
          SizedBox(
            height: size.height / 36.0,
          ),
          ResponseButton(
            width: width,
            backgroundColor: QuizColors.lightGreen,
            buttonText: buttonText,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
