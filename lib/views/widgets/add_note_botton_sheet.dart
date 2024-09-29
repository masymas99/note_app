import 'package:flutter/material.dart';
import 'package:semsar/views/widgets/custom_botton.dart';
import 'package:semsar/views/widgets/custom_text_field.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hint: 'content',
            maxlines: 5,
          ),
          SizedBox(height: 46),
          CustomBotton(),
        ],
      ),
    );
  }
}
