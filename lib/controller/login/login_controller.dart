import 'package:flutter/material.dart';

class LoginController {
  String name="";
 late GlobalKey<FormState>formKey;
 LoginController(){
   formKey=GlobalKey();
 }
 String? validetorName(String value){
   if(value!.isEmpty){
     return "hrrrr";
   }else if(value.length<4){
     return "444444444";
   }else return null;
 }
}