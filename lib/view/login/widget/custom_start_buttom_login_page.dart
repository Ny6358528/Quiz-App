import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';
import 'package:quizapp/core/resources/string_managers.dart';
import '../../../core/resources/font_managers.dart';

class CustomStartButtomLoginPage extends StatelessWidget {
   CustomStartButtomLoginPage({
    super.key, required this.onPressed,required this.OutPutStreamBuilderIsActive
  });
  final VoidCallback onPressed;
Stream<bool>OutPutStreamBuilderIsActive;
  @override
  Widget build(BuildContext context) {
    return 
       StreamBuilder(
         stream: OutPutStreamBuilderIsActive,
         builder: (context, asyncSnapshot) {
           return Center(
            child: MaterialButton(
                 
               onPressed:asyncSnapshot.data==false?null:asyncSnapshot.data==true?onPressed:null,
                 
               child:  Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color:asyncSnapshot.data==false?ColorsManagers.kGreyColor:asyncSnapshot.data==true? ColorsManagers.kPrimaryColor:ColorsManagers.kGreyColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:Center(child: Text(StringManagers.kStart,style: TextStyle(
                      color: ColorsManagers.kWhiteColor,
                      fontSize: FontSize.f24
                  ),)) ,
                )
            ),
                 
               );
         }
       );
  }
}
