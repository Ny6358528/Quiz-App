import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:quizapp/core/resources/routes_managers.dart';

import '../../core/resources/const_values.dart';

class OnboardingController {
  int currentPage=0;

  late StreamController<int> _dotStreamController;
  late Sink<int> inPutDotStream;
  late Stream<int> outPutDotStream;
  late StreamController<int> _nextStreamController;
  late Sink<int> inPutNextStream;
  late Stream<int> outPutNextStream;
  late bool isTaddedIndcator=false;
  late PageController onBoardingPageViewController;
  OnboardingController(){
    _dotStreamController=StreamController();
    inPutDotStream=_dotStreamController.sink;
    outPutDotStream=_dotStreamController.stream;
    _nextStreamController=StreamController();
    inPutNextStream=_nextStreamController.sink;
    outPutNextStream=_nextStreamController.stream;
    inPutDotStream.add(currentPage);
    inPutNextStream.add(currentPage);
    onBoardingPageViewController=PageController();

  }

  void onDotTapped(int index){
    currentPage=index;
    inPutDotStream.add(currentPage);
    inPutNextStream.add(currentPage);
    onBoardingPageViewController.animateToPage(currentPage, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }
  void onNextTapped(BuildContext context){
    if(currentPage==  ConstValues.onBoardingList.length-1){
      goToLoginScreen(context: context);
    }else{
      currentPage++;
    }
    onBoardingPageViewController.animateToPage(currentPage, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
    inPutDotStream.add(currentPage);
    inPutNextStream.add(currentPage);

  }
  void goToLoginScreen({required BuildContext context}){
    Navigator.pushNamedAndRemoveUntil(context, RoutesNamed.kLoginScreen,  (routes)=>false);
  }

  void Disposed(){
    _dotStreamController.close();
    inPutDotStream.close();
    onBoardingPageViewController.dispose();
    _nextStreamController.close();
    inPutNextStream.close();
  }
}