
import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';

import 'package:quizapp/core/resources/string_managers.dart';

class LogoLoginScreen extends StatelessWidget {
  const LogoLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(StringManagers.kQ,style: TextStyle(
          fontSize: 200,fontWeight: FontWeight.w400,color: ColorsManagers.kPrimaryColor

      ),),
    );
  }
}