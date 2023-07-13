import 'package:flutter/material.dart';

class Content {
  final String label;
  final IconData? icon;

  Content({required this.label, this.icon});
}

class CustomButton extends StatelessWidget {
  final Content content;
  final Function()? onClick;
  final double radius = 35;

  CustomButton({required this.content, this.onClick});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      mouseCursor: SystemMouseCursors.click,
      highlightColor: Colors.white70,
      borderRadius: BorderRadius.circular(radius),
      onTap: onClick,
      child: Container(
        width: screenWidth < 500 ? screenWidth : 500,
        padding: EdgeInsets.only(top: 18, bottom: 18, left: 14, right: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          children: [
            Expanded(
                flex: 0,
                child: Icon(
                  content.icon,
                  color: Colors.white,
                )),
            Expanded(
              flex: 2,
              child: Text(
                content.label,
                style: const TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}