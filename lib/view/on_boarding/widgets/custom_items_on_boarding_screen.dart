import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizapp/core/resources/string_managers.dart';

import '../../../core/resources/asset_values_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/height_managers.dart';
import '../../../models/on_boarding/onboarding_model.dart';

class CustomItemsOnBoardingScreen extends StatelessWidget {
  const CustomItemsOnBoardingScreen({
    super.key, required this.onBoardingModel,
  });
final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                onBoardingModel.onBoardingImage,
              ),
              SizedBox(height: HeightManagers.h108,),

              Text(onBoardingModel.onBoardingTitle,style: TextStyle(
                fontSize: FontSize.f32,
                fontWeight: FontWeight.w600,
                color: ColorsManagers.kSecenrdyColor,
              ),),
              SizedBox(height: HeightManagers.h24,),
              Center(
                child: Text(textAlign: TextAlign.center,


                  onBoardingModel.onBoardingDescription,style: TextStyle(
                    fontSize: FontSize.f21,
                    fontWeight: FontWeight.w400,
                    color: ColorsManagers.kSecenrdyColor,
                  ),),
              ),
            ]
        ),
      ),
    );
  }
}