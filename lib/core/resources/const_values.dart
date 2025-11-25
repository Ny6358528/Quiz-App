import 'package:quizapp/core/resources/string_managers.dart';

import '../../models/on_boarding/onboarding_model.dart';
import 'asset_values_managers.dart';

class ConstValues {
 static List<OnBoardingModel>onBoardingList=[
    OnBoardingModel(onBoardingImage: AssetValuesManagers.kOnBoardingImage1, onBoardingTitle: StringManagers.kSynonymsforQUIZ, onBoardingDescription: StringManagers.kSynonymsforQUIZ),
    OnBoardingModel(onBoardingImage: AssetValuesManagers.kOnBoardingImage2, onBoardingTitle:StringManagers.kAntonymsofQUIZ , onBoardingDescription:StringManagers.kAntonymsofQUIZ2),
    OnBoardingModel(onBoardingImage: AssetValuesManagers.kOnBoardingImage3, onBoardingTitle: StringManagers.kCoolQuiz, onBoardingDescription:StringManagers.kCoolQuiz2),
  ];
}