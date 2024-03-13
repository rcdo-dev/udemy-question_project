import 'package:question_project/domain/question.dart';
import 'package:question_project/domain/response.dart';

class Quiz {
  Question question;
  List<Response> responses;

  Quiz({
    required this.question,
    required this.responses,
  });
}
