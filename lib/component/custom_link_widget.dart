import 'package:flutter/material.dart';

class CustomLink extends StatelessWidget {
  final String text;
  final Function() onClick;

  const CustomLink({
    super.key, required this.text, required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 5;

    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: onClick,
      mouseCursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(text, style: TextStyle(color: Colors.white),),
      ),
    );
  }
}