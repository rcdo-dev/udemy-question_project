import 'package:question_project/features/quiz/models/question_model.dart';
import 'package:question_project/features/quiz/models/quiz_model.dart';
import 'package:question_project/features/quiz/models/response_model.dart';

class QuizController {
  var selectedQuestion = 0;

  // List<QuizModel> quiz = [
  //   QuizModel(
  //     question: QuestionModel(
  //       text: 'Qual a sua cor favorita?',
  //       responses: [
  //         ResponseModel(text: 'Preto'),
  //         ResponseModel(text: 'Vermelho'),
  //         ResponseModel(text: 'Verde'),
  //         ResponseModel(text: 'Branco'),
  //       ],
  //     ),
  //   ),
  //   QuizModel(
  //     question: QuestionModel(
  //       text: 'Qual o seu animal favorito',
  //       responses: [
  //         ResponseModel(text: 'Coelho'),
  //         ResponseModel(text: 'Cobra'),
  //         ResponseModel(text: 'Elefante'),
  //         ResponseModel(text: 'Leão'),
  //       ],
  //     ),
  //   ),
  //   QuizModel(
  //     question: QuestionModel(
  //       text: 'Qual o seu instrutor favorito',
  //       responses: [
  //         ResponseModel(text: 'Maria'),
  //         ResponseModel(text: 'João'),
  //         ResponseModel(text: 'Leo'),
  //         ResponseModel(text: 'Pedro'),
  //       ],
  //     ),
  //   ),
  // ];

  void changeQuestion() {
    selectedQuestion++;
  }
}
