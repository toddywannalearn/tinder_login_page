import 'package:flutter/material.dart';

import '../component/custom_button_widget.dart';
import '../component/custom_link_widget.dart';
import '../component/logo_tinder_widget.dart';
import '../component/terms_and_policies_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 60),
      child: screenHeight > 550 ? Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: CustomAppBar(),
          ),
          TinderLogo(),
          const LoginContent(),
        ],
      ) : ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: CustomAppBar(),
          ),
          TinderLogo(),
          const LoginContent(),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          mouseCursor: SystemMouseCursors.click,
          highlightColor: Color(0xffe1546c),
          borderRadius: BorderRadius.circular(5),
          onTap: (){
            print('Back button clicked!!');
          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TermsAndPolicies(),
        const SizedBox(height: 16),
        CustomButton(
          content: Content(label: 'SIGN IN WITH APPLE', icon: Icons.apple),
          onClick: () {
            print('clicked');
          },
        ),
        const SizedBox(height: 8),
        CustomButton(
          content:
              Content(label: 'SIGN IN WITH FACEBOOK', icon: Icons.facebook),
          onClick: () {
            print('clicked');
          },
        ),
        const SizedBox(height: 8),
        CustomButton(
          content: Content(
              label: 'SIGN IN WITH PHONE NUMBER',
              icon: Icons.chat_bubble_rounded),
          onClick: () {
            print('clicked');
          },
        ),
        const SizedBox(height: 16),
        CustomLink(
          text: 'Trouble Signing In?',
          onClick: () {
            print('Clicked!!');
          },
        ),
      ],
    );
  }
}
