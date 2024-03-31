import 'package:flutter/material.dart';

import 'package:question_project/features/quiz/controller/quiz_controller.dart';
import 'package:question_project/features/quiz/pages/result_page.dart';
import 'package:question_project/features/quiz/widgets/question.dart';
import 'package:question_project/features/quiz/widgets/response_button.dart';

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

  ({String? text, List<ResponseButton>? buttons}) quiz() {
    var text = _controller.quiz?.questions?[_controller.selectedQuestion].text;
    var responses =
        _controller.quiz?.questions?[_controller.selectedQuestion].responses;

    var buttons = responses
        ?.map(
          (e) => ResponseButton(
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
        centerTitle: true,
      ),
      body: haveQuestion
          ? SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Question(
                    text: quiz().text.toString(),
                  ),
                  ...?quiz().buttons,
                ],
              ),
            )
          : ResultPage(
              result: _controller.checkScore(score: _controller.scoreResult),
              buttonText: 'Reiniciar?',
              onPressed: _respond,
            ),
    );
  }
}
