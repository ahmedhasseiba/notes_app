import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(color: Colors.white, fontSize: 28)),
        Spacer(),
        CustomIconSearch(icon: icon),
      ],
    );
  }
}
