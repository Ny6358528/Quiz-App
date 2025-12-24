
import 'package:flutter/material.dart';
import 'package:quizapp/core/resources/colors_managers.dart';


class TextFormFieldLoginScreen extends StatelessWidget {
  const TextFormFieldLoginScreen({
    super.key, required this.onChanged,
  });
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged,
      cursorColor: ColorsManagers.kPrimaryColor,
      decoration: InputDecoration(
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: ColorsManagers.kPrimaryColor)
          ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: ColorsManagers.kPrimaryColor)
        ),
      ),
    );
  }
}
