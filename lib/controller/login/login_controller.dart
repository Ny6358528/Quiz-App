import 'dart:async';

import 'package:flutter/material.dart';

class LoginController {
  String name="";
 late GlobalKey<FormState>formKey;
 late bool buttomIsActive=false;
 late  StreamController<bool> streamControllerIsActiveButtom;
 late  Sink<bool> InputStreamControllerIsActiveButtom;
 late  Stream<bool>  OutputStreamControllerIsActiveButtom;
 LoginController(){
   formKey=GlobalKey();
   streamControllerIsActiveButtom=StreamController();
   InputStreamControllerIsActiveButtom=streamControllerIsActiveButtom.sink;
   OutputStreamControllerIsActiveButtom=streamControllerIsActiveButtom.stream;
   InputStreamControllerIsActiveButtom.add(buttomIsActive);
 }
 String? validetorName(String value){
   if(value.isEmpty){
     return "isEmpty Text";
   }else if(value.length<4){
     return "less 4 char";
   }else return null;
 }
void onChangedTextFormField(){
   if(formKey.currentState!.validate()){
     buttomIsActive=true;
   }else{
   buttomIsActive=false;
   }
   InputStreamControllerIsActiveButtom.add(buttomIsActive);


 }
 dispose(){
   streamControllerIsActiveButtom.close();
   InputStreamControllerIsActiveButtom.close();
 }
 
}