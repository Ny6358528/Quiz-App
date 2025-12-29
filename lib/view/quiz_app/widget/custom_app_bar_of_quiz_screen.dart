import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';
import 'package:quizapp/core/resources/font_managers.dart';
import 'package:quizapp/core/resources/padding_managers.dart';
class CustomAppBarOfQuizScreen extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBarOfQuizScreen({
    super.key, required this.textName, required this.onTap,
  });
  final String textName;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {

    return AppBar(

      backgroundColor: ColorsManagers.kLightWhiteColor,
      leadingWidth: 140,
      leading: InkWell(onTap:onTap

       ,child:  Padding(
        padding: const EdgeInsets.only(left: PaddingManagers.p24),
        child: Row(
          children: [
            Icon(Icons.arrow_back_ios,color: ColorsManagers.kPrimaryColor,size: FontSize.f12,),
            Text(textName,style: TextStyle(fontSize: FontSize.f12,color: ColorsManagers.kPrimaryColor,fontWeight: FontWeight.w600),)
          ],
        ),
      ),

      ),
      centerTitle: true,
      title: Text("7/10"),
      titleTextStyle: TextStyle(color: ColorsManagers.kBlackColor,fontWeight: FontWeight.w600,fontSize: FontSize.f18),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
