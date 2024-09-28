import 'package:flutter/material.dart';
import 'package:semsar/views/widgets/custom_app_bar.dart';
import 'package:semsar/views/widgets/notes_items.dart';

class NodesViewBody extends StatelessWidget {
  const NodesViewBody({Key? key}) : super(key: key);
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
          NoteItem()
        ],
      ),
    );
  }
}
