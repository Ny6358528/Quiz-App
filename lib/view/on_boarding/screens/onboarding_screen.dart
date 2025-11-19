import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/asset_values_managers.dart';

class OnboardingScreen extends StatelessWidget {
   OnboardingScreen({super.key});
final PageController _pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
SvgPicture.asset(AssetValuesManagers.kOnBoardingImage1),
        ],
      ),

    );
  }
}
