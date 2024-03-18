import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:question_project/features/quiz/models/quiz_model.dart';
import 'package:question_project/features/quiz/repositories/quiz_respository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  var repository = QuizRepository();

  test('Deve retornar uma lista de quizzes.', () async {
    var quiz = await repository.getQuiz();
    expect(quiz, isA<QuizModel>());
  });
}
