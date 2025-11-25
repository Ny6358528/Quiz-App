import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizapp/core/resources/string_managers.dart';
import '../../../controller/onboarding/onboarding_controller.dart';
import '../../../core/resources/asset_values_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/height_managers.dart';
import '../widgets/custom_bottom_navigation_bar_on_boarding_screen.dart';

class OnboardingScreen extends StatefulWidget {
   OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  OnboardingController onboardingController=OnboardingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onboardingController=OnboardingController();
  }
  @override
  void dispose() {
    onboardingController.Disposed();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AssetValuesManagers.kOnBoardingImage1,
                        ),
                        SizedBox(height: HeightManagers.h108,),

                        Text(StringManagers.kSynonymsforQUIZ,style: TextStyle(
                          fontSize: FontSize.f32,
                          fontWeight: FontWeight.w600,
                          color: ColorsManagers.kSecenrdyColor,
                        ),),
                        SizedBox(height: HeightManagers.h24,),
                        Text(StringManagers.kSynonymsforQUIZ,style: TextStyle(
                          fontSize: FontSize.f21,
                          fontWeight: FontWeight.w400,
                          color: ColorsManagers.kSecenrdyColor,
                        ),),
                      ]
                    ),
                  ),
                );
              },
            ),






          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigationBarOnBoardingScreen(
              dotcount: 3,
           outPutDotStream: onboardingController.outPutDotStream,
              onTapDotIndcator: (index){
onboardingController.onDotTapped(index);

              },
              onTapNext: (){
onboardingController.onNextTapped();
              },
            ),
          ),
        ],
      ),
    );
  }}