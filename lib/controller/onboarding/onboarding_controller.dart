import 'dart:async';

import 'package:flutter/cupertino.dart';

class OnboardingController {
  int currentPage=0;

  late StreamController<int> _dotStreamController;
  late Sink<int> inPutDotStream;
  late Stream<int> outPutDotStream;
  late PageController onBoardingPageViewController;
  OnboardingController(){
    _dotStreamController=StreamController();
    inPutDotStream=_dotStreamController.sink;
    outPutDotStream=_dotStreamController.stream;
    inPutDotStream.add(currentPage);
    onBoardingPageViewController=PageController();
  }

  void onDotTapped(int index){
    currentPage=index;
    inPutDotStream.add(currentPage);
    onBoardingPageViewController.animateToPage(currentPage, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }
  void onNextTapped(){
    if(currentPage==2){
      currentPage=0;
    }else{
      currentPage++;
    }
    onBoardingPageViewController.animateToPage(currentPage, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
    inPutDotStream.add(currentPage);

  }

  void Disposed(){
    _dotStreamController.close();
    inPutDotStream.close();
    onBoardingPageViewController.dispose();
  }
}