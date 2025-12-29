import 'package:flutter/material.dart';
import 'package:quizapp/controller/login/login_controller.dart';
import 'package:quizapp/core/resources/padding_managers.dart';
import '../../../core/resources/height_managers.dart';
import '../widget/custom_start_buttom_login_page.dart';
import '../widget/enter_your_name_login_screen.dart' show EnterYourNameLoginScreen;
import '../widget/logo_login_screen.dart';
import '../widget/text_form_field_login_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginController _loginController;
  @override
  void initState() {
    // TODO: implement initState
    _loginController=LoginController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(PaddingManagers.p24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            LogoLoginScreen(),
            SizedBox(height: HeightManagers.h158,),
            EnterYourNameLoginScreen(),
            SizedBox(height: HeightManagers.h10,),


              TextFormFieldLoginScreen(
                formKey: _loginController.formKey,
                  validator: ( value) {
               return _loginController.validetorName(value!);
                  },
                  onChanged: (value) {
                    if(_loginController.formKey.currentState!.validate()){
                      print("object");
                    }

                  }
                ),


            SizedBox(height: HeightManagers.h158,),

            CustomStartButtomLoginPage(
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
