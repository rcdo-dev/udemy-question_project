import 'dart:convert';

import 'package:question_project/features/quiz/models/question_model.dart';

class QuizModel {
  final List<QuestionModel>? questions;

  QuizModel({
    this.questions,
  });

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      questions: List<QuestionModel>.from(
        map['quiz'].map((e) => QuestionModel.fromMap(e)),
      ).toList(),
    );
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['quiz'] = questions?.map((e) => e.toMap()).toList();
    return map;
  }

  factory QuizModel.fromJson(String source) {
    return QuizModel.fromMap(jsonDecode(source));
  }

  String toJson() => jsonEncode(toMap());
}
