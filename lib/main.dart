import 'package:flutter/material.dart';
import 'package:flutter_notes_app/constas.dart';
import 'package:flutter_notes_app/view/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
 await Hive.openBox(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const Scaffold(
        body: NotesView(),
      ),
    );
  }
}
