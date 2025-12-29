import 'package:flutter/material.dart';


import '../../view/login/screen/login_screen.dart';
import '../../view/on_boarding/screens/onboarding_screen.dart';
import '../../view/quiz_app/screen/quiz_screen.dart';
import '../../view/splash/screens/splash_screen.dart';

class RoutesManagers {
 static final Map<String, WidgetBuilder> routes= {

   RoutesNamed.kSplashScreen: (context) => SplashScreen(),
   RoutesNamed.kOnboardingScreen: (context) => OnboardingScreen(),
   RoutesNamed.kLoginScreen: (context) => LoginScreen(),
   RoutesNamed.kQuizScreen: (context) => QuizScreen(),
};


}

class RoutesNamed{

 static final String kSplashScreen="/SplashScreen";
 static final String kOnboardingScreen="/OnboardingScreen";
 static final String kLoginScreen="/LoginScreen";
 static final String kQuizScreen="/QuizScreen=";
}