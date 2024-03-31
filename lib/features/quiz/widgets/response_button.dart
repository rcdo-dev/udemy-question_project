import 'package:flutter/material.dart';

import 'package:question_project/themes/quiz_text_styles.dart';

class ResponseButton extends StatelessWidget {
  final double? width;
  final Color? backgroundColor;
  final String buttonText;
  final void Function() onPressed;

  const ResponseButton({
    super.key,
    this.width,
    this.backgroundColor,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        child: Text(
          buttonText,
          style: QuizTextStyles.textBody,
        ),
      ),
    );
  }
}
