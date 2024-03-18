import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:question_project/features/quiz/models/quiz_model.dart';

class QuizRepository {
  Future<QuizModel> getQuiz() async {
    final result = await rootBundle.loadString('assets/database/quizzes.json');
    Map<String, dynamic> map = jsonDecode(result);

    var quiz = QuizModel.fromMap(map);

    return quiz;
  }
}
