import 'package:question_project/features/quiz/models/quiz_model.dart';
import 'package:question_project/features/quiz/repositories/quiz_respository.dart';

class QuizController {
  QuizModel? quiz;
  int selectedQuestion = 0;
  int scoreResult = 0;
  final _repository = QuizRepository();

  Future<void> getQuiz() async {
    quiz = await _repository.getQuiz();
  }

  void changeQuestion({required int score}) {
    selectedQuestion++;
    scoreResult += score;
  }

  String checkScore({required int score}) => switch (score) {
        < 8 => 'Parabéns',
        < 12 => 'Você é bom',
        < 16 => 'Impressionante',
        _ => 'Nível Jedi!'
      };
}
