import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),

      child: Center(
        child: IconButton(onPressed: onPressed, icon: Icon(icon)),
      ),
    );
  }
}
