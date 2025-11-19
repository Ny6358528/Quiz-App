import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';

import 'package:quizapp/core/resources/height_managers.dart';

import 'package:quizapp/core/resources/radius_managers.dart';
import 'package:quizapp/core/resources/string_managers.dart';

import '../widgets/custom_logo_splash_screen.dart';
class CustomButtonSplashScreen extends StatelessWidget {
  const CustomButtonSplashScreen({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,child:
    Container(
      width: double.infinity,
      height: HeightManagers.h70,

      decoration: BoxDecoration(

          color: ColorsManagers.kWhiteColor,
          borderRadius: BorderRadius.circular(RadiusManagers.r35)
      ),
      child: Center(
        child: Text(textAlign: TextAlign.center,

          StringManagers.kGetStarted,style: TextStyle(
              color: ColorsManagers.kSecenrdyColor,
              fontWeight: FontWeight.w400,
              fontSize: 21
          ),),
      ),
    ),);
  }
}
