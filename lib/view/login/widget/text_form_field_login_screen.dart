
import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';


class TextFormFieldLoginScreen extends StatelessWidget {
  const TextFormFieldLoginScreen({
    super.key, required this.onChanged, required this.validator, required this.formKey, required this.controller,
  });
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;

  final GlobalKey<FormState>formKey;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Form(key:formKey ,
      child: TextFormField(
        controller: controller,
        validator:validator ,
        onChanged:onChanged,
        cursorColor: ColorsManagers.kPrimaryColor,
        decoration: InputDecoration(
            border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color:ColorsManagers.kPrimaryColor)
            ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color:ColorsManagers.kPrimaryColor)
          ),
        ),
      ),
    );
  }
}
