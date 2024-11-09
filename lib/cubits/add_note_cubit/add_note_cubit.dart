import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notes_app/constants.dart';
import 'package:flutter_notes_app/model/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color? color = const Color(0xFF2A3439);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
