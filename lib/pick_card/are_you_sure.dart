import 'package:animal_crossing_bank/custom_widgets/build_main_btn.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

import 'pick_your_card_final.dart';

class AreYouSure extends StatelessWidget {
  const AreYouSure({Key? key}) : super(key: key);

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
                text: 'Are you sure?\nTheres no going back.',
                size: 32,
              ),
              const Padding(
                padding: EdgeInsets.all(7.0),
                child: Text(
                  '(Well...unless you lose your card hehe)',
                  style: TextStyle(
                    color: Color(0xFFFFF9E6),
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: buildDivider(),
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 218,
                    height: 391,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 94,
                    child: Container(
                      width: 30,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFC8A116),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 14,
                    child: Container(
                      width: 218,
                      padding: const EdgeInsets.only(left: 9.5, right: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            width: 38,
                            height: 23,
                            child: Stack(
                              children: const [
                                Positioned(
                                  left: 0,
                                  height: 23,
                                  width: 23,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.yellow,
                                    maxRadius: 23,
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  height: 23,
                                  width: 23,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    maxRadius: 23,
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
              const SizedBox(height: 30),
              Container(
                width: 167,
                height: 9,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(2, 70, 65, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(167, 9)),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildMainBtn(
                    text: 'no'.toUpperCase(),
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
                    text: 'yes'.toUpperCase(),
                    btnColor: const Color(0xFFAA6E29),
                    textColor: const Color(0xFFFFFFFF),
                    press: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PickYourCardFinal()));
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
