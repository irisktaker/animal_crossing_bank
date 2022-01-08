import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          baseBackgroundImage(size),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
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
                const SizedBox(height: 33),
                Column(
                  children: [
                    SizedBox(
                      width: 254,
                      child: Column(
                        children: [
                          buildTextFormField(
                            hint: 'Email: abcdef@ghjk.com',
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 9),
                          buildTextFormField(
                            hint: 'Password: ………',
                            keyboardType: TextInputType.visiblePassword,
                            obscure: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 9),
                    buildMainBtn(
                      text: 'create'.toUpperCase(),
                      btnColor: const Color(0xFFAA6E29),
                      textColor: const Color(0xFFFFFFFF),
                      press: (){},
                    ),
                    const SizedBox(height: 5),
                    buildMainBtn(
                      text: 'go back'.toUpperCase(),
                      btnColor: const Color(0xFF037F76),
                      textColor: const Color(0xFFFFFFFF),
                      press: () {
                        Navigator.pop(context);
                      },
                      minimumSize: const Size(148, 38),
                      fontSize: 18,
                      padding: const EdgeInsets.all(0),
                      fontWeight: FontWeight.normal,
                    ),
                    buildTextButton(text: 'Forgot User/Password'),
                  ],
                ),
                const Spacer(flex: 7),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
