import 'package:flutter_test/flutter_test.dart';
import 'package:question_project/features/quiz/models/question_model.dart';
import 'package:question_project/features/quiz/models/quiz_model.dart';
import 'package:question_project/features/quiz/models/response_model.dart';

void main() {
  var question1 = QuestionModel(
    text: "Uma pergunta?",
    responses: [
      ResponseModel(text: 'Uma resposta 1'),
      ResponseModel(text: 'Outra resposta 1'),
    ],
  );

  var question2 = QuestionModel(
    text: "Uma pergunta?",
    responses: [
      ResponseModel(text: 'Uma resposta 2'),
      ResponseModel(text: 'Outra resposta 2'),
    ],
  );

  List<QuestionModel> quiz = [question1, question2];

  var quizModel = QuizModel(questions: quiz);

  var mapaQuiz = {
    "quiz": [
      {
        "question": {
          "text": "Qual a sua cor favorita?",
          "responses": [
            {"text": "Preto"},
            {"text": "Vermelho"},
            {"text": "Verde"},
            {"text": "Branco"}
          ]
        }
      },
      {
        "question": {
          "text": "Qual o seu animal favorito?",
          "responses": [
            {"text": "Coelho"},
            {"text": "Cobra"},
            {"text": "Elefante"},
            {"text": "Leão"}
          ]
        }
      },
      {
        "question": {
          "text": "Qual o seu instrutor favorito?",
          "responses": [
            {"text": "Maria"},
            {"text": "João"},
            {"text": "Leo"},
            {"text": "Pedro"}
          ]
        }
      }
    ]
  };

  test('Deve retornar um objeto quiz', () {
    var quiz = QuizModel.fromMap(mapaQuiz);
    expect(quiz, isA<QuizModel>());
  });

  test('Deve retornar um mapa.', () {
    var map = quizModel.toMap();
    expect(map, isA<Map>());
  });
}
