import 'package:flutter/material.dart';
import 'package:semsar/views/widgets/add_note_botton_sheet.dart';
import 'package:semsar/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: noteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteBottonSheet();
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
