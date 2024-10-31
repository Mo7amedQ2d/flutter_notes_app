import 'package:flutter/material.dart';
import 'package:flutter_notes_app/constas.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: qPrimaryColor,
      decoration: InputDecoration(
          hintText: 'Title',
          border: BuildBorderTextField(),
          enabledBorder: BuildBorderTextField(),
          focusedBorder: BuildBorderTextField(qPrimaryColor)),
    );
  }

  OutlineInputBorder BuildBorderTextField([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
