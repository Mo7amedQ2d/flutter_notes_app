import 'package:flutter/material.dart';

import 'widgets/p_notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Colors.grey.shade400,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
