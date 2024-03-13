import 'package:question_project/model/question_model.dart';
import 'package:question_project/model/response_model.dart';

class Quiz {
  Question question;
  List<Response> responses;

  Quiz({
    required this.question,
    required this.responses,
  });
}
