import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_notes_app/model/note_model.dart';
import 'package:intl/intl.dart';

import 'w_color_list_view.dart';
import 'w_custom_bottom.dart';
import 'w_custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title Text',
            maxLines: 1,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextFiled(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 4,
          ),
          const SizedBox(
            height: 15,
          ),
          const ColorListView(),

          const SizedBox(
            height: 15,
          ),
// Spacer(),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    DateTime nowDate = DateTime.now();
                    var formatDate = DateFormat.yMMMEd().format(nowDate);
                    var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formatDate,
                        // DateTime.now().toString(),

                        color: Colors.blueGrey.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

