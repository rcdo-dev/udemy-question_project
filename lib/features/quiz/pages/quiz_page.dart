import 'package:flutter/material.dart';

import 'package:question_project/features/quiz/controller/quiz_controller.dart';
import 'package:question_project/features/quiz/enum/quiz_state.dart';
import 'package:question_project/features/quiz/widgets/question.dart';
import 'package:question_project/features/quiz/widgets/response.dart';

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
    _controller.getQuiz();
    _controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  void _respond() {
    setState(() {
      _controller.changeQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    var responses =
        _controller.quiz?.questions?[_controller.selectedQuestion].responses;
    var text = _controller.quiz?.questions?[_controller.selectedQuestion].text;

    List<Response>? buttons = responses
        ?.map(
          (e) => Response(
            buttonText: e.text.toString(),
            onPressed: _respond,
          ),
        )
        .toList();

    if (_controller.stateNotifier.value == QuizState.success) {
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
                text: text.toString(),
              ),
              ...?buttons,
            ],
          ),
        ),
      );
    } else {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}
