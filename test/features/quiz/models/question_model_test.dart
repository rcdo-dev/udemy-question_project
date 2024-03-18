import 'package:flutter_test/flutter_test.dart';
import 'package:question_project/features/quiz/models/question_model.dart';
import 'package:question_project/features/quiz/models/response_model.dart';

void main() {
  var question = QuestionModel(
    text: "Uma pergunta?",
    responses: [
      ResponseModel(text: 'Uma resposta'),
      ResponseModel(text: 'Outra resposta'),
    ],
  );

  var map = {
    "text": "Uma pergunta?",
    "responses": [
      {"text": "Uma resposta"},
      {"text": "Outra resposta"}
    ]
  };

  test('Deve retornar um mapa.', () {
    var mapa = question.toMap();
    expect(mapa, isA<Map>());
  });

  test('Deve retornar um objeto Question Model.', () {
    var mapa = QuestionModel.fromMap(map);
    expect(mapa, isA<QuestionModel>());
  });
}
