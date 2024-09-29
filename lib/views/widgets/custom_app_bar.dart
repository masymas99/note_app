import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon})
      : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Text(
            title,
            style:
                TextStyle(fontSize: 20, color: Colors.white, letterSpacing: 3),
          ),
          Spacer(),
          CustomSearshIcon(
            icon: icon,
          )
        ],
      ),
    );
  }
}

class CustomSearshIcon extends StatelessWidget {
  const CustomSearshIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 107, 103, 103),
        ),
        child: IconButton(onPressed: () {}, icon: Icon(icon)));
  }
}
