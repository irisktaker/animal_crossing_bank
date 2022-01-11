import 'package:animal_crossing_bank/custom_widgets/build_main_btn.dart';
import 'package:animal_crossing_bank/custom_widgets/build_text_field.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:animal_crossing_bank/pick_card/pick_your_card.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  final String? nameHolder;
  final String? numberHolder;
  final String? emailHolder;
  final String? passwordHolder;

  const ConfirmationScreen(
      {this.nameHolder,
      this.numberHolder,
      this.emailHolder,
      this.passwordHolder,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/artboard.png',
            width: size.width,
            fit: BoxFit.fill,
          ),
          Container(
            color: Colors.white.withOpacity(0.6),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: buildHeadTitle(
                    text: 'Does Everything\nLook Correct?',
                    color: const Color(0xFF037F76),
                    size: 33,
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: buildDivider(
                    color: const Color(0xFF037F76),
                  ),
                ),
                const SizedBox(height: 26),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xFF037F76),
                      backgroundImage:
                          AssetImage('assets/images/user_profile_picture.png'),
                    ),
                    const SizedBox(width: 35),
                    buildHeadTitle(
                      text: 'User Information',
                      size: 24,
                      color: const Color(0xFF037F76),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      buildTextField(
                        text: 'Name: $nameHolder',
                        type: TextInputType.name,
                      ),
                      buildTextField(
                        text: 'Phone Number: $numberHolder',
                        type: TextInputType.phone,
                      ),
                      buildTextField(
                        text: 'Email: $emailHolder',
                        type: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ),
                buildTextField(
                  text: 'Password: $passwordHolder',
                  type: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 27,
                      backgroundColor: Color(0xFF037F76),
                      backgroundImage:
                          AssetImage('assets/images/user_profile_picture.png'),
                    ),
                    const SizedBox(width: 35),
                    buildHeadTitle(
                      text: 'Security Information',
                      size: 24,
                      color: const Color(0xFF037F76),
                    ),
                  ],
                ),
                buildTextField(
                  text: 'Social Security number: ••••••••••••',
                  type: TextInputType.number,
                  obscureText: true,
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                buildTextField(
                  text: 'State ID/ License number: •••••••',
                  type: TextInputType.number,
                  obscureText: true,
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                const TextField(
                  // controller: ,
                  keyboardType: TextInputType.streetAddress,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Address:  443 N abcdef, Abcd, EF, 12345- 67891',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildMainBtn(
                      text: 'go back'.toUpperCase(),
                      btnColor: const Color(0xFF037F76),
                      textColor: const Color(0xFFFFFFFF),
                      press: () {
                        Navigator.pop(context);
                      },
                      minimumSize: const Size(124, 38),
                      fontSize: 14,
                      padding: const EdgeInsets.all(0),
                      fontWeight: FontWeight.normal,
                    ),
                    const SizedBox(width: 14),
                    buildMainBtn(
                      text: 'continue'.toUpperCase(),
                      btnColor: const Color(0xFFAA6E29),
                      textColor: const Color(0xFFFFFFFF),
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PickYourCard()));
                      },
                      minimumSize: const Size(124, 38),
                      fontSize: 14,
                      padding: const EdgeInsets.all(0),
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
