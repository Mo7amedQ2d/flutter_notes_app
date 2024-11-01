import 'package:flutter/material.dart';
import 'package:flutter_notes_app/view/widgets/w_custom_appbar.dart';
import 'package:flutter_notes_app/view/widgets/w_custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check_sharp,
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextFiled(hintText: 'title'),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            hintText: 'content',
            maxLines: 4,
          )
        ],
      ),
    );
  }
}
