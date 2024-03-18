import 'dart:convert';

import 'package:question_project/features/quiz/models/question_model.dart';

class QuizModel {
  List<QuestionModel> questions;

  QuizModel({
    required this.questions,
  });

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      questions:
          (map['quiz'] as List).map((e) => QuestionModel.fromMap(e)).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['question'] = questions.map((e) => e.toMap()).toList();
    return map;
  }

  factory QuizModel.fromJson(String source) {
    return QuizModel.fromMap(jsonDecode(source));
  }

  String toJson() => jsonEncode(toMap());
}
