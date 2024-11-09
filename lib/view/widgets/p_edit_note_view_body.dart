import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_notes_app/view/widgets/w_custom_appbar.dart';
import 'package:flutter_notes_app/view/widgets/w_custom_text_field.dart';

import '../../model/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 40.0,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check_sharp,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFiled(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 4,
          )
        ],
      ),
    );
  }
}
