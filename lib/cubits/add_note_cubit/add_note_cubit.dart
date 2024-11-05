import 'package:bloc/bloc.dart';
import 'package:flutter_notes_app/constants.dart';
import 'package:flutter_notes_app/model/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      emit(AddNoteSuccess());

      await notesBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
