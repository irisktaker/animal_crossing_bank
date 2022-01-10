import 'package:animal_crossing_bank/custom_widgets/build_main_btn.dart';
import 'package:animal_crossing_bank/custom_widgets/build_text_button.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';

import 'package:flutter/material.dart';

import 'create.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          baseBackgroundImage(size),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(flex: 3),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildHeadTitle(text: 'Animal Crossing'),
                      buildDivider(),
                      buildHeadTitle(text: 'New Horizon\nBanking', size: 64),
                    ],
                  ),
                  Image.asset(
                    'assets/images/animal_Crossing_pattern.png',
                    width: 132,
                    height: 126,
                  ),
                  const Spacer(),
                  buildMainBtn(
                    text: 'Sign In',
                    btnColor: const Color(0xFFFFF8E2),
                    press: ()=> Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 11),
                  buildMainBtn(
                    text: 'Create Account',
                    btnColor: const Color(0xFF037F76),
                    textColor: const Color(0xFFFFFFFF),
                    press: ()=> Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => const CreateScreen(),
                    ),
                    ),
                  ),
                  buildTextButton(text: 'Forgot User/Password'),
                  const Spacer(flex: 7),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
