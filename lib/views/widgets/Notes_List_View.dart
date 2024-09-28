import 'package:flutter/material.dart';
import 'package:semsar/views/widgets/notes_items.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return NoteItem();
      },
    );
  }
}
