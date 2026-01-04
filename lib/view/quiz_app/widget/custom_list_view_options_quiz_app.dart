
import 'package:flutter/material.dart';

import 'package:quizapp/core/resources/height_managers.dart';

import 'custom_item_radio_quiz_screen.dart';

class customListViewOptionsQuizApp extends StatelessWidget {
  const customListViewOptionsQuizApp({super.key, required this.options, required this.itemCount});
final List <String> options;
final int itemCount;
  @override
  Widget build(BuildContext context) {
     return ListView.separated(
    physics: NeverScrollableScrollPhysics(),
shrinkWrap: true,

itemBuilder: (context,index){
return   CustomItemRadioQuizScreen(
options: options[index], onTap: () {  },
    isSelected:true
);
}, separatorBuilder: (context,index){
return  SizedBox(height: HeightManagers.h24,);
}, itemCount:itemCount);
}
}



