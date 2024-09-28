import 'package:flutter/material.dart';
import 'package:semsar/views/widgets/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxlines = 1})
      : super(key: key);
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
