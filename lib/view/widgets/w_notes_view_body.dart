import 'package:flutter/material.dart';

import 'w_custom_appbar.dart';
import 'w_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}
