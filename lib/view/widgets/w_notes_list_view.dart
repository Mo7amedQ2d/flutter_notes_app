import 'package:flutter/material.dart';
import 'package:flutter_notes_app/view/widgets/w_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 22,
        itemBuilder: (BuildContext context, int index) {
          return const NoteItem();
        },
      ),
    );
  }
}
