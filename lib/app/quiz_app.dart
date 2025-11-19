import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/font_managers.dart';
import 'package:quizapp/core/resources/routes_managers.dart';

import '../view/splash/screens/splash_screen.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
routes: RoutesManagers.routes,
      initialRoute: RoutesNamed.kSplashScreen,
      theme: ThemeData(
        fontFamily: FontManagers.kMontserrat
      ),
        debugShowCheckedModeBanner: false,
       );
  }
}
