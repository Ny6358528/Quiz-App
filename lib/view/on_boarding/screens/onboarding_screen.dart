import 'package:flutter/material.dart';

import '../../../controller/onboarding/onboarding_controller.dart';

import '../../../core/resources/const_values.dart';
import '../widgets/custom_bottom_navigation_bar_on_boarding_screen.dart';
import '../widgets/custom_items_on_boarding_screen.dart';

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
              controller: onboardingController.onBoardingPageViewController,
              itemCount: ConstValues.onBoardingList.length,
              itemBuilder: (context, index) {
                return CustomItemsOnBoardingScreen(
                  onBoardingModel: ConstValues.onBoardingList[index],
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
