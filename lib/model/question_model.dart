import 'package:question_project/model/response_model.dart';

class QuestionModel {
  String text;
  List<ResponseModel> responses;

  QuestionModel({
    required this.text,
    required this.responses,
  });
}
