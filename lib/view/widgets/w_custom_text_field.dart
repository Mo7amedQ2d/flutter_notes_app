// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_notes_app/constas.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: qPrimaryColor,
      decoration: InputDecoration(
          hintText: hintText,
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
