import 'package:flutter/material.dart';

import 'package:question_project/controller/quiz_controller.dart';
import 'package:question_project/widgets/question.dart';
import 'package:question_project/widgets/response.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final _controller = QuizController();

  void _respond(){
    setState(() {
      _controller.changeQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    var responses =
        _controller.quiz[_controller.selectedQuestion].question.responses;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Question(
              text:
                  _controller.quiz[_controller.selectedQuestion].question.text,
            ),
            ...responses.map(
              (e) => Response(
                buttonText: e.text,
                onPressed: _respond,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
