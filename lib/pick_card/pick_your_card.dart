import 'package:animal_crossing_bank/custom_widgets/build_main_btn.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:animal_crossing_bank/pick_card/are_you_sure.dart';
import 'package:flutter/material.dart';

class PickYourCard extends StatelessWidget {
  const PickYourCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          baseBackgroundImage2(size),
          Column(
            children: [
              const SizedBox(height: 60),
              buildHeadTitle(
                text: 'Pick Your Card \nDesign'.toUpperCase(),
                size: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: buildDivider(),
              ),
              const SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: size.width * 0.3),
                        Stack(
                          children: [
                            Container(
                              width: 162,
                              height: 280,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 70,
                              child: Container(
                                width: 22,
                                height: 39,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFC8A116),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              bottom: 0,
                              child: Container(
                                width: 162,
                                padding:
                                    const EdgeInsets.only(left: 7, right: 14),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'New\nHorizon',
                                      style: TextStyle(
                                        fontFamily: 'FinkHeavy Regular',
                                        fontSize: 18,
                                        color: Color(0xFF037F76),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 28,
                                      height: 17,
                                      child: Stack(
                                        children: const [
                                          Positioned(
                                            left: 0,
                                            height: 17,
                                            width: 17,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.yellow,
                                              maxRadius: 17,
                                            ),
                                          ),
                                          Positioned(
                                            right: 0,
                                            height: 17,
                                            width: 17,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.red,
                                              maxRadius: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 90),
                        Stack(
                          children: [
                            Container(
                              width: 162,
                              height: 280,
                              decoration: BoxDecoration(
                                color: const Color(0xFF8ECFC9),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 70,
                              child: Container(
                                width: 22,
                                height: 39,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFc64153),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              bottom: 0,
                              child: Container(
                                width: 162,
                                padding:
                                    const EdgeInsets.only(left: 7, right: 14),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'New\nHorizon',
                                      style: TextStyle(
                                        fontFamily: 'FinkHeavy Regular',
                                        fontSize: 18,
                                        color: Color(0xFFc64153),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 28,
                                      height: 17,
                                      child: Stack(
                                        children: const [
                                          Positioned(
                                            left: 0,
                                            height: 17,
                                            width: 17,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.yellow,
                                              maxRadius: 17,
                                            ),
                                          ),
                                          Positioned(
                                            right: 0,
                                            height: 17,
                                            width: 17,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.red,
                                              maxRadius: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 90),
                        Stack(
                          children: [
                            Container(
                              width: 162,
                              height: 280,
                              decoration: BoxDecoration(
                                color: const Color(0xFFC64153),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 70,
                              child: Container(
                                width: 22,
                                height: 39,
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade700,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              bottom: 0,
                              child: Container(
                                width: 162,
                                padding:
                                    const EdgeInsets.only(left: 7, right: 14),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'New\nHorizon',
                                      style: TextStyle(
                                        fontFamily: 'FinkHeavy Regular',
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 28,
                                      height: 17,
                                      child: Stack(
                                        children: const [
                                          Positioned(
                                            left: 0,
                                            height: 17,
                                            width: 17,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.yellow,
                                              maxRadius: 17,
                                            ),
                                          ),
                                          Positioned(
                                            right: 0,
                                            height: 17,
                                            width: 17,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.red,
                                              maxRadius: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: size.width * 0.3),
                      ],
                    ),
                    const SizedBox(height: 30),
                    // Figma Flutter Generator Ellipse14Widget - ELLIPSE
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: size.width * 0.3),
                        Container(
                          width: 167,
                          height: 9,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(2, 70, 65, 1),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(167, 9)),
                          ),
                        ),
                        const SizedBox(width: 90),
                        Container(
                          width: 167,
                          height: 9,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(2, 70, 65, 1),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(167, 9)),
                          ),
                        ),
                        const SizedBox(width: 90),
                        Container(
                          width: 167,
                          height: 9,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(2, 70, 65, 1),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(167, 9)),
                          ),
                        ),
                        SizedBox(width: size.width * 0.3),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundColor: Color(0xFF024641),
                    maxRadius: 7.5,
                  ),
                  SizedBox(width: 12),
                  CircleAvatar(
                    backgroundColor: Color(0xFF037F76),
                    maxRadius: 7.5,
                  ),
                  SizedBox(width: 12),
                  CircleAvatar(
                    backgroundColor: Color(0xFF037F76),
                    maxRadius: 7.5,
                  ),
                  SizedBox(width: 12),
                  CircleAvatar(
                    backgroundColor: Color(0xFF037F76),
                    maxRadius: 7.5,
                  ),
                ],
              ),
              const SizedBox(height: 78),
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
                              builder: (context) => const AreYouSure()));
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
        ],
      ),
    );
  }
}
