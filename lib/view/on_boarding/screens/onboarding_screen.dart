import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../controller/onboarding/onboarding_controller.dart';
import '../../../core/resources/asset_values_managers.dart';
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
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(children: [  SvgPicture.asset(
        AssetValuesManagers.kOnBoardingImage1,
      ),




            ]

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