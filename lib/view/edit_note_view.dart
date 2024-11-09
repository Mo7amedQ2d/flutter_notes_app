import 'package:flutter/material.dart';
import 'package:flutter_notes_app/model/note_model.dart';
// import 'package:flutter_notes_app/model/note_model.dart';

import 'widgets/p_edit_note_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
