import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndPolicies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fontSize = 16;
    Color fontColor = Colors.white;
    double underlineThickness = 2;

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'By tapping Create Account or Sign In, you agree to our ',
          style: TextStyle(
            color: fontColor,
            fontSize: fontSize,
          ),
          children: [
            TextSpan(
              text: 'Terms',
              style: TextStyle(
                color: fontColor,
                fontSize: fontSize,
                decoration: TextDecoration.underline,
                decorationColor: fontColor,
                decorationThickness: underlineThickness,
              ),
              mouseCursor: SystemMouseCursors.click,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Terms Clicked!!');
                },
            ),
            TextSpan(
              text: '. Learn how we process your data in our ',
              style: TextStyle(
                color: fontColor,
                fontSize: fontSize,
              ),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                color: fontColor,
                fontSize: fontSize,
                decoration: TextDecoration.underline,
                decorationColor: fontColor,
                decorationThickness: underlineThickness,
              ),
              mouseCursor: SystemMouseCursors.click,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Privacy Policy Clicked!!');
                },
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(
                color: fontColor,
                fontSize: fontSize,
              ),
            ),
            TextSpan(
              text: 'Cookies Policy',
              style: TextStyle(
                color: fontColor,
                fontSize: fontSize,
                decoration: TextDecoration.underline,
                decorationColor: fontColor,
                decorationThickness: underlineThickness,
              ),
              mouseCursor: SystemMouseCursors.click,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Cookies Policy Clicked!!');
                },
            ),
            TextSpan(
              text: '.',
              style: TextStyle(
                color: fontColor,
                fontSize: fontSize,
              ),
            ),
          ]),
    );
  }
}