import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 179, 189, 47),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Note 1',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Text(
                'This is a note',
                style: TextStyle(
                    color: const Color.fromARGB(255, 58, 55, 55), fontSize: 18),
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
                    color: const Color.fromARGB(255, 58, 55, 55), fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
