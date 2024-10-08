import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:semsar/views/notes_view.dart';
import 'package:semsar/views/widgets/constans.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: NotesView(),
    );
  }
}
