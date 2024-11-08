import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_notes_app/model/note_model.dart';
import 'package:flutter_notes_app/view/widgets/w_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) { 
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: notes.length,
            itemBuilder: (BuildContext context, int index) {
              return  NoteItem(note: notes[index],);
            },
          ),
        );
      },
    );
  }
}
