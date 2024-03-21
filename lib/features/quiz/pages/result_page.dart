import 'package:flutter/material.dart';
import 'package:question_project/features/quiz/widgets/response_button.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String buttonText;
  final VoidCallback onPressed;

  const ResultPage({
    super.key,
    required this.result,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          result,
        ),
        ResponseButton(
          buttonText: buttonText,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
