

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quizapp/core/resources/font_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/padding_managers.dart';
import '../../../core/resources/string_managers.dart';
import '../widget/custom_app_bar_of_quiz_screen.dart';
import '../widget/custom_question_title_quiz_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    //String name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(

      backgroundColor: ColorsManagers.kLightWhiteColor,

      appBar: CustomAppBarOfQuizScreen(
        textName: StringManagers.kPrevious,
        onTap: (){
           Navigator.of(context).pop();
        },
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: PaddingManagers.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 90,),
              Stack(
                clipBehavior: Clip.none,
                children: [

                  CustomQuestionTitleQuizScreen(
                    text: "text",
                  ),

                    Positioned(
                      top: -60 ,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: ColorsManagers.kWhiteColor,
                        child: CircularPercentIndicator(
                          radius: 60.0,
                          lineWidth: 7.0,
                          percent: 1.0,
                          animationDuration: 3000,
                          animation: true,
                          center:  Text("30",style: TextStyle(fontSize: FontSize.f32,fontWeight: FontWeight.w600),),
                          backgroundColor: ColorsManagers.kPrimaryColor.withOpacity(0.15),
                          progressColor: ColorsManagers.kPrimaryColor,
                        ),
                      ),
                    ),


                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
