import 'package:animal_crossing_bank/custom_widgets/build_main_btn.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:animal_crossing_bank/screens/bottom_navigate_screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

class PickYourCardFinal extends StatelessWidget {
  const PickYourCardFinal({Key? key}) : super(key: key);

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
                text: 'Perfect!',
                size: 32,
              ),
              const Padding(
                padding: EdgeInsets.all(7.0),
                child: Text(
                  'Your new card will be there\nin 5-7 business days ',
                  textAlign: TextAlign.center,
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
                      padding: const EdgeInsets.only(left: 7, right: 14),
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
              const SizedBox(height: 19),
              Container(
                width: 167,
                height: 9,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(2, 70, 65, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(167, 9)),
                ),
              ),
              const SizedBox(height: 54),
              const Text(
                'Stay on the look out for your\nNew Horizon banking card!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFF9E6),
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 60),
              buildMainBtn(
                text: 'continue'.toUpperCase(),
                btnColor: const Color(0xFFAA6E29),
                textColor: const Color(0xFFFFFFFF),
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                minimumSize: const Size(172, 43),
                fontSize: 14,
                padding: const EdgeInsets.all(0),
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
