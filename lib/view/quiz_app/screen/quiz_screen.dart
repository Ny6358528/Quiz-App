

import 'package:flutter/material.dart';

import '../../../core/resources/colors_managers.dart';
import '../widget/custom_app_bar_of_quiz_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: ColorsManagers.kLightWhiteColor,
      appBar: CustomAppBarOfQuizScreen(),
      body: Container(),
    );
  }
}
