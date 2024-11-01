// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'w_custom_buttom.dart';
import 'w_custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0))),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextFiled(
              hintText: 'Title Text',
              maxLines: 1,
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextFiled(
              hintText: 'Content',
              maxLines: 4,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
