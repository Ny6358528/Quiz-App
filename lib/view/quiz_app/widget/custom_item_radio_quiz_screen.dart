
import 'package:flutter/material.dart';

import 'package:quizapp/core/resources/font_managers.dart';
import 'package:quizapp/core/resources/height_managers.dart';
import 'package:quizapp/core/resources/radius_managers.dart';
import '../../../core/resources/colors_managers.dart';

class CustomItemRadioQuizScreen extends StatelessWidget {
  const CustomItemRadioQuizScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: HeightManagers.h60,
      decoration: BoxDecoration(
          color: ColorsManagers.kWhiteColor,
          borderRadius: BorderRadius.circular(RadiusManagers.r20)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("data",style: TextStyle(
                fontWeight: FontWeight.w600,
                color: ColorsManagers.kPrimaryColor,
                fontSize: FontSize.f20
            ),),
            Container(
                width: 20,
                height: 20,
                decoration: ShapeDecoration(shape:
                CircleBorder(
                  side: BorderSide(
                    color: ColorsManagers.kPrimaryColor,
                    width: 1,

                  ),

                ),
                    color: ColorsManagers.kWhiteColor
                )
            ),

          ],
        ),
      ),
    );
  }
}
