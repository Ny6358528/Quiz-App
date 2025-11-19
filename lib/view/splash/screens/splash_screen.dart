import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';

import 'package:quizapp/core/resources/height_managers.dart';
import 'package:quizapp/core/resources/padding_managers.dart';


import '../../../controller/splash/splash_controller.dart';

import '../widgets/custom_button_splash_screen.dart';
import '../widgets/custom_logo_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManagers.kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingManagers.p32),
        child: Column(
          children: [
            Center(
              child: CustomLogoSplashScreen(),
            ),
            SizedBox(height: HeightManagers.h129,),
            CustomButtonSplashScreen(
              onPressed: () { SplashController.navtoonboardingscreen(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
