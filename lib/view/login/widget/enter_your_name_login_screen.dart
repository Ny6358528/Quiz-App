
import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';

import '../../../core/resources/font_managers.dart';
class EnterYourNameLoginScreen extends StatelessWidget {
  const EnterYourNameLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(textAlign: TextAlign.start,"Enter your name",style: TextStyle(
        fontSize: FontSize.f18,fontWeight: FontWeight.w600,color: ColorsManagers.kPrimaryColor
    ),);
  }
}


