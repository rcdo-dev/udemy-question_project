import 'package:flutter/material.dart';

import 'package:question_project/features/quiz/enum/quiz_state.dart';
import 'package:question_project/features/quiz/models/quiz_model.dart';
import 'package:question_project/features/quiz/repositories/quiz_respository.dart';

class QuizController {
  QuizModel? quiz;
  var selectedQuestion = 0;
  final _repository = QuizRepository();

  final stateNotifier = ValueNotifier<QuizState>(QuizState.empty);

  Future<void> getQuiz() async {
    stateNotifier.value = QuizState.loading;
    quiz = await _repository.getQuiz();
    stateNotifier.value = QuizState.success;
  }

  void changeQuestion() {
    selectedQuestion++;
  }
}

// corrigir erro do tamanho da lista sendo ultrapassado.