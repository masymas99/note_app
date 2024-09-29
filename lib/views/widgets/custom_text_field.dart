import 'package:flutter/material.dart';
import 'package:semsar/views/widgets/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key, required this.hint, this.maxlines = 1, this.onsaved})
      : super(key: key);
  final String hint;
  final int maxlines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter some text';
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          border: buildborder(),
          hintText: hint,
          hintStyle: TextStyle(
            color: const Color.fromARGB(194, 115, 112, 112),
          )),
    );
  }

  OutlineInputBorder buildborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
    );
  }
}
