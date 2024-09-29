import 'package:flutter/material.dart';
import 'package:semsar/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: GestureDetector(
        onTap: () {
          // Navigate to the note detail page
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditNoteView();
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 206, 155, 84),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Note tips',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                subtitle: Text(
                  'This is a note',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 58, 55, 55),
                      fontSize: 16),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 36, bottom: 16),
                child: Text(
                  'may 21,2022',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 58, 55, 55),
                      fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
