import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class CreateUserprofile extends StatelessWidget {
  const CreateUserprofile({Key? key}) : super(key: key);

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
                          height: 500,
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
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildHeadTitle(text: 'User\nInformation', size: 33),
                          buildDivider(),
                          buildHeadTitle(text: 'User Profile', size: 33),
                          const CircleAvatar(
                            radius: 40,
                            backgroundColor: Color(0xFF037F76),
                            backgroundImage: AssetImage(
                                'assets/images/user_profile_picture.png'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: (){},
                                child: const Text('Upload Photo',
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
                          buildTextFormField(
                            hint: 'Full Name',
                            keyboardType: TextInputType.text,

                          ),
                          const SizedBox(height: 10),
                          buildTextFormField(
                            hint: 'Phone Number',
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(height: 10),
                          buildTextFormField(
                            hint: 'Email',
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 10),
                          buildTextFormField(
                            hint: 'Password',
                            keyboardType: TextInputType.visiblePassword,
                            obscure: true,
                            suffixIcon: const Icon(
                              Icons.visibility,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          buildTextFormField(
                            hint: 'Confirm Password',
                            keyboardType: TextInputType.visiblePassword,
                            obscure: true,
                            suffixIcon: const Icon(
                              Icons.visibility,
                              color: Colors.black,
                              size: 16,
                            ),
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
                                  // Navigator.pop(context);
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
