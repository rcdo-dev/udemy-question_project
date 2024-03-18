import 'dart:convert';

import 'package:question_project/features/quiz/models/response_model.dart';

class QuestionModel {
  String text;
  List<ResponseModel> responses;

  QuestionModel({
    required this.text,
    required this.responses,
  });

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      text: map['text'],
      responses: (map['responses'] as List)
          .map((e) => ResponseModel.fromMap(e))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map['text'] = text;
    map['responses'] = responses.map((e) => e.toMap()).toList();
    return map;
  }

  factory QuestionModel.fromJson(String source) {
    return QuestionModel.fromMap(jsonDecode(source));
  }

  String toJson() => jsonEncode(toMap());
}
