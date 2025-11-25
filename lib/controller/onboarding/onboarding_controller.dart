import 'dart:async';

class OnboardingController {
  int currentPage=0;

  late StreamController<int> _dotStreamController;
  late Sink<int> inPutDotStream;
  late Stream<int> outPutDotStream;
  OnboardingController(){
    _dotStreamController=StreamController();
    inPutDotStream=_dotStreamController.sink;
    outPutDotStream=_dotStreamController.stream;
    inPutDotStream.add(currentPage);
  }

  void onDotTapped(int index){
    currentPage=index;
    inPutDotStream.add(currentPage);
  }
  void onNextTapped(){
    if(currentPage==2){
      currentPage=0;
    }else{
      currentPage++;
    }
    inPutDotStream.add(currentPage);
  }
}