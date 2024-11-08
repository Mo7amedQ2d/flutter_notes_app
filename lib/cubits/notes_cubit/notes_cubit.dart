import 'package:bloc/bloc.dart';
import 'package:flutter_notes_app/model/note_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    // try {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    //
    notes = notesBox.values.toList();
    //
    emit(NotesSuccess());
    // } catch (e) {
    // emit(NotesFailure(e.toString()));
    // }
  }
}
