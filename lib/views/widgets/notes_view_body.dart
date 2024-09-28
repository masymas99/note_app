import 'package:flutter/material.dart';
import 'package:semsar/views/widgets/custom_app_bar.dart';
import 'package:semsar/views/widgets/notes_items.dart';

class noteViewBody extends StatelessWidget {
  const noteViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          const CustomAppBar(),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

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
