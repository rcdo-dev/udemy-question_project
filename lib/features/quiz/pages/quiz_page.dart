import 'package:flutter/material.dart';

import 'package:question_project/features/quiz/controller/quiz_controller.dart';
import 'package:question_project/features/quiz/pages/result_page.dart';
import 'package:question_project/features/quiz/widgets/question.dart';
import 'package:question_project/features/quiz/widgets/response_button.dart';
import 'package:question_project/themes/quiz_colors.dart';
import 'package:question_project/themes/quiz_text_styles.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final _controller = QuizController();

  @override
  void initState() {
    super.initState();
    _controller.getQuiz().then((_) => setState(() {}));
  }

  void _respond({int? score}) {
    if (haveQuestion) {
      setState(() {
        var value = score ?? 0;
        _controller.changeQuestion(score: value);
      });
    } else {
      setState(() {
        _controller.selectedQuestion = 0;
        _controller.scoreResult = 0;
      });
    }
  }

  ({String? text, List<ResponseButton>? buttons}) quiz({double? screenSize}) {
    var text = _controller.quiz?.questions?[_controller.selectedQuestion].text;
    var responses =
        _controller.quiz?.questions?[_controller.selectedQuestion].responses;
    var size = screenSize ?? 0.0;
    var buttons = responses
        ?.map(
          (e) => ResponseButton(
            width: size / 1.8,
            backgroundColor: QuizColors.iceBlue,
            buttonText: e.text.toString(),
            onPressed: () {
              var score = e.score ?? 0;
              _respond(score: score);
            },
          ),
        )
        .toList();

    return (text: text, buttons: buttons);
  }

  bool get haveQuestion {
    int? questionsLength = _controller.quiz?.questions?.length;
    if (questionsLength != null) {
      return _controller.selectedQuestion < questionsLength;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: QuizColors.primary,
        title: Text(
          'Perguntas',
          style: QuizTextStyles.textTitleWhite,
        ),
        centerTitle: true,
      ),
      body: haveQuestion
          ? SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: size.height / 36.0,
                  ),
                  Question(
                    text: quiz().text.toString(),
                  ),
                  SizedBox(
                    height: size.height / 36.0,
                  ),
                  SizedBox(
                    height: size.height / 3.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...?quiz(screenSize: size.width).buttons,
                      ],
                    ),
                  ),
                ],
              ),
            )
          : ResultPage(
              result: _controller.checkScore(score: _controller.scoreResult),
              width: size.width / 1.8,
              buttonText: 'Reiniciar?',
              onPressed: _respond,
            ),
    );
  }
}
