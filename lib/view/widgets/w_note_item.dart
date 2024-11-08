import 'package:flutter/material.dart';
import 'package:flutter_notes_app/model/note_model.dart';
import 'package:flutter_notes_app/view/edit_note_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditNotesView()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Container(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 12),
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    note.title,
                    style: const TextStyle(fontSize: 25),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Text(
                      note.subTitle,
                      style: TextStyle(
                          fontSize: 15, color: Colors.white.withOpacity(0.5)),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.trash,
                        size: 25,
                      ))),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      note.date,
                      style: const TextStyle(fontSize: 10),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
