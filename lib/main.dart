import 'package:flutter/material.dart';

import 'package:question_project/features/quiz/pages/quiz_page.dart';
import 'package:question_project/themes/quiz_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: QuizColors.primary),
        useMaterial3: true,
      ),
      home: const QuizPage(),
    );
  }
}
