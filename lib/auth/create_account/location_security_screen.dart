import 'package:animal_crossing_bank/auth/confirmation%20/confirmation.dart';
import 'package:animal_crossing_bank/custom_widgets/build_main_btn.dart';
import 'package:animal_crossing_bank/custom_widgets/build_text_form_field.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class LocationAndSecurityScreen extends StatelessWidget {
  const LocationAndSecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          baseBackgroundImage2(size),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 60),
                        const SizedBox(
                          width: 50,
                          child: CircleAvatar(
                            radius: 21.5,
                            backgroundColor: Color(0xFF037F76),
                            backgroundImage: AssetImage(
                              'assets/images/user_profile_picture.png',
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Transform.rotate(
                          angle: 40,
                          child: Container(
                            width: 10,
                            height: 10,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 185,
                          color: Colors.black,
                        ),
                        Transform.rotate(
                          angle: 40,
                          child: Container(
                            width: 10,
                            height: 10,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 35),
                        const SizedBox(
                          width: 50,
                          child: CircleAvatar(
                            radius: 21.5,
                            backgroundColor: Color(0xFF037F76),
                            backgroundImage: AssetImage(
                              'assets/images/user_profile_picture.png',
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Transform.rotate(
                          angle: 40,
                          child: Container(
                            width: 10,
                            height: 10,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 135,
                          color: Colors.black,
                        ),
                        Transform.rotate(
                          angle: 40,
                          child: Container(
                            width: 10,
                            height: 10,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildHeadTitle(text: 'User\nInformation', size: 33),
                          buildDivider(),
                          buildHeadTitle(text: 'Location', size: 33),
                          const SizedBox(height: 20),
                          buildTextFormField(
                            hint: 'Street address',
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: buildTextFormField(
                                  hint: 'City ',
                                  keyboardType: TextInputType.streetAddress,
                                  widthHeightPadding: const EdgeInsets.fromLTRB(13.0, 8.0, 20.0, 8.0),
                                  suffixIcon: const Icon(Icons.arrow_drop_down, color: Color(0xFF037F76),),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                flex: 2,
                                child: buildTextFormField(
                                  hint: 'Zip Code',
                                  keyboardType: TextInputType.number,
                                  widthHeightPadding: const EdgeInsets.fromLTRB(13.0, 10.0, 20.0, 10.0),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 18),
                          buildTextFormField(
                            hint: 'State',
                            keyboardType: TextInputType.streetAddress,
                            widthHeightPadding: const EdgeInsets.fromLTRB(13.0, 10.0, 20.0, 10.0),
                            suffixIcon: const Icon(Icons.arrow_drop_down, color: Color(0xFF037F76),),
                          ),
                          const SizedBox(height: 25),
                          buildHeadTitle(text: 'Security Information', size: 30),
                          const SizedBox(height: 20),
                          buildTextFormField(
                            hint: 'Social Security number',
                            widthHeightPadding: const EdgeInsets.fromLTRB(13.0, 10.0, 20.0, 10.0),
                            keyboardType: TextInputType.number,
                            obscure: true,
                            suffixIcon: const Icon(
                              Icons.visibility,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          buildTextFormField(
                            hint: 'State ID/ License number',
                            widthHeightPadding: const EdgeInsets.fromLTRB(13.0, 10.0, 20.0, 10.0),
                            keyboardType: TextInputType.number,
                            obscure: true,
                            suffixIcon: const Icon(
                              Icons.visibility,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: (){},
                                child: const Text('Photo scan State ID/ License',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Bolt Regular',
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: const Icon(
                                  Icons.camera_alt,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              buildMainBtn(
                                text: 'continue'.toUpperCase(),
                                btnColor: const Color(0xFFAA6E29),
                                textColor: const Color(0xFFFFFFFF),
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ConfirmationScreen())
                                  );
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
