import 'package:flutter/material.dart';
import 'package:semsar/views/widgets/custom_botton.dart';
import 'package:semsar/views/widgets/custom_text_field.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> fromkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          SizedBox(
            height: 18,
          ),
          CustomTextField(
            hint: 'content',
            onsaved: (value) {
              subTitle = value;
            },
            maxlines: 5,
          ),
          SizedBox(height: 24),
          CustomBotton(
            ontap: () {
              if (fromkey.currentState!.validate()) {
                fromkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
