import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';
import 'package:quizapp/core/resources/string_managers.dart';
import '../../../core/resources/font_managers.dart';

class CustomStartButtomLoginPage extends StatelessWidget {
  const CustomStartButtomLoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(

          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorsManagers.kPrimaryColor,
                borderRadius: BorderRadius.circular(20)
            ),
            child:Center(child: Text(StringManagers.kStart,style: TextStyle(
                color: ColorsManagers.kWhiteColor,
                fontSize: FontSize.f24
            ),)) ,
          ),
          onPressed: (){

          }),
    );
  }
}
