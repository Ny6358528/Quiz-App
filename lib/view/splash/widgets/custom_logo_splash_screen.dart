
import 'package:flutter/material.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/string_managers.dart';

class CustomLogoSplashScreen extends StatelessWidget {
  const CustomLogoSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(textAlign: TextAlign.center,


      StringManagers.kQ,style: TextStyle(
          color: ColorsManagers.kWhiteColor,
          fontSize: FontSize.f400,
          fontWeight: FontWeight.w400



      ),);
  }
}
