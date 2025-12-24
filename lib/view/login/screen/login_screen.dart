import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';
import 'package:quizapp/core/resources/padding_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/height_managers.dart';
import '../widget/enter_your_name_login_screen.dart' show EnterYourNameLoginScreen;
import '../widget/logo_login_screen.dart';
import '../widget/text_form_field_login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(PaddingManagers.p24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            LogoLoginScreen(),
            SizedBox(height: HeightManagers.h158,),
            EnterYourNameLoginScreen(),
            SizedBox(height: HeightManagers.h10,),
            TextFormFieldLoginScreen()
          ],
        ),
      ),
    );
  }
}
