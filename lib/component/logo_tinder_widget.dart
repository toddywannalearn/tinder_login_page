import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TinderLogo extends StatelessWidget {

  final String title = 'tinder';

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/tinder_symbol_white.svg', width: 90, height: 90,),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 72, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
