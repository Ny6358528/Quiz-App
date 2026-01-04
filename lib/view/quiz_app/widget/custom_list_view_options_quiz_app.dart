
import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/height_managers.dart';


import '../../../controller/quiz/quiz_controller.dart';

import '../widget/custom_item_radio_quiz_screen.dart';


class CustomListViewOptionsQuizApp extends StatelessWidget {
  const CustomListViewOptionsQuizApp({
    super.key,
    required QuizController quizController,
  }) : _quizController = quizController;

  final QuizController _quizController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,

        itemBuilder: (context,index){
          return   CustomItemRadioQuizScreen();
        }, separatorBuilder: (context,index){
      return  SizedBox(height: HeightManagers.h24,);
    }, itemCount:_quizController.options.length );
  }
}
