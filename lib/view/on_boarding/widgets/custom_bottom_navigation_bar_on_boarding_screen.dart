import 'package:flutter/material.dart';

import 'package:quizapp/core/resources/colors_managers.dart';
import 'package:quizapp/core/resources/font_managers.dart';
import 'package:quizapp/core/resources/height_managers.dart';
import 'package:quizapp/core/resources/padding_managers.dart';
import 'package:quizapp/core/resources/string_managers.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:quizapp/core/resources/width_managers.dart';

class CustomBottomNavigationBarOnBoardingScreen extends StatelessWidget {
  const CustomBottomNavigationBarOnBoardingScreen({
    super.key, required this.dotcount, required this.onTap, required this.outPutDotStream,
  });
final int dotcount;
 final Stream<int> outPutDotStream;
 final void Function(int index) onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: PaddingManagers.p52,left: PaddingManagers.p32,right: PaddingManagers.p32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(StringManagers.kSkip,style: TextStyle(
              fontSize: FontSize.f15,
              color: ColorsManagers.kSecenrdyColor,
              fontWeight: FontWeight.w400
          ),),  StreamBuilder(
            stream: outPutDotStream,
            builder: (context, asyncSnapshot) {
              return DotsIndicator(
                onTap: (position){
                  onTap(position);
                },
                    dotsCount: dotcount,
                position: asyncSnapshot.hasData
                    ? asyncSnapshot.data!.toDouble()
                    : 0.0,

                decorator: DotsDecorator(
                      spacing: const EdgeInsets.all(5),
                      size: const Size(WidthManagers.w12, HeightManagers.h12),
                      activeSize: const Size(WidthManagers.w12, HeightManagers.h12),
                      color: ColorsManagers.kGreyColor, // Inactive color
                      activeColor: ColorsManagers.kSecenrdyColor,
                    ),
                  );
            }
          )





          ,Text(StringManagers.kNext,style: TextStyle(
              fontSize: FontSize.f15,
              color: ColorsManagers.kSecenrdyColor,
              fontWeight: FontWeight.w400
          ),),
        ],
      ),
    );
  }
}
