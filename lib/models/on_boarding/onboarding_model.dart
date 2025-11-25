class OnBoardingModel{
   String? _onBoardingImage;
   String? _onBoardingTitle;

   String get onBoardingImage => _onBoardingImage!;

   set onBoardingImage(String value) {
     _onBoardingImage = value;
   }

   String? _onBoardingDescription;

  OnBoardingModel({required String onBoardingImage,required String onBoardingTitle,required String onBoardingDescription }){
    _onBoardingImage=onBoardingImage;
    _onBoardingTitle=onBoardingTitle;
    _onBoardingDescription=onBoardingDescription;
  }

   String get onBoardingTitle => _onBoardingTitle!;

   set onBoardingTitle(String value) {
     _onBoardingTitle = value;
   }

   String get onBoardingDescription => _onBoardingDescription!;

   set onBoardingDescription(String value) {
     _onBoardingDescription = value;
   }


}