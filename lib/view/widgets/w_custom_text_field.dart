// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key, required this.hintText,
       this.maxLines = 1, this.onSaved});

  final String hintText;
  final int maxLines;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
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
