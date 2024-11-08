import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'w_custom_appbar.dart';
import 'w_notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
