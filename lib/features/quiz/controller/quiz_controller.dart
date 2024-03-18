import 'package:question_project/features/quiz/models/quiz_model.dart';
import 'package:question_project/features/quiz/repositories/quiz_respository.dart';

class QuizController {
  var selectedQuestion = 0;
  final repository = QuizRepository();
  QuizModel? quiz;

  // Incluir gestão de estado na controller.

  QuizController() {
    upQuiz();
  }

  Future<QuizModel?> upQuiz() async {
    quiz = await repository.getQuiz();
    return quiz;
  }

  void changeQuestion() {
    selectedQuestion++;
  }
}
