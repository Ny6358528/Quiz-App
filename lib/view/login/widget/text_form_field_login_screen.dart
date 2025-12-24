
import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';


class TextFormFieldLoginScreen extends StatelessWidget {
  const TextFormFieldLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: ColorsManagers.kPrimaryColor)
          )
      ),
    );
  }
}
