
import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/font_managers.dart';
import 'package:quizapp/core/resources/radius_managers.dart';

import '../../../core/resources/colors_managers.dart';


class CustomQuestionTitleQuizScreen extends StatelessWidget {
  const CustomQuestionTitleQuizScreen({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 229,
      decoration: BoxDecoration(
          color: ColorsManagers.kWhiteColor,
          borderRadius: BorderRadius.circular(RadiusManagers.r20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 100,
                blurStyle: BlurStyle.outer,
                spreadRadius: -50,
                color: Colors.black
            )
          ]
      ),
      child: Column(
        children: [
          SizedBox(height: 90,),
          Center(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(text,

              //"In what year did the United States \n host the FIFA World Cup for the first time?",

              style: TextStyle(fontWeight: FontWeight.w600,fontSize: FontSize.f15
                ,wordSpacing: -2,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
