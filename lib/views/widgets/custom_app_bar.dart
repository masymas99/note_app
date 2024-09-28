import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: const Row(
        children: [
          Text(
            'NOTES',
            style:
                TextStyle(fontSize: 20, color: Colors.white, letterSpacing: 3),
          ),
          Spacer(),
          CustomSearshIcon()
        ],
      ),
    );
  }
}

class CustomSearshIcon extends StatelessWidget {
  const CustomSearshIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 95, 84, 84),
      ),
      child: Icon(
        Icons.search,
      ),
    );
  }
}
