import 'package:question_project/features/quiz/models/quiz_model.dart';
import 'package:question_project/features/quiz/repositories/quiz_respository.dart';

class QuizController {
  QuizModel? quiz;
  var selectedQuestion = 0;
  final _repository = QuizRepository();

  Future<void> getQuiz() async {
    quiz = await _repository.getQuiz();
  }

  void changeQuestion() {
    selectedQuestion++;
  }
}

// corrigir erro do tamanho da lista sendo ultrapassado.