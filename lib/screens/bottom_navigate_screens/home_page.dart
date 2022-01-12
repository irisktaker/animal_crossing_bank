import 'package:animal_crossing_bank/custom_widgets/build_app_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/build_bottom_navigation_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Image buildIconImage({
      String? imageURL,
      double? width = 46,
      double? height = 46,
    }) {
      return Image.asset(
        imageURL!,
        width: width,
        height: height,
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 15, left: 23, right: 23),
        child: ListView(
          children: [
            buildAAppBar(size),
            Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      maxRadius: 25,
                      backgroundImage:
                          AssetImage('assets/images/user_profile_picture.png'),
                    ),
                    buildHeadTitle(
                      text: 'Hi Charle'.toUpperCase(),
                      color: Colors.black,
                      size: 33,
                    ),
                    SizedBox(width: size.width * 0.05),
                    SizedBox(
                      width: 46,
                      height: 75,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 7,
                            left: 3,
                            child: buildIconImage(
                              imageURL: 'assets/images/img_3.png',
                              width: 52,
                              height: 52,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              padding: const EdgeInsets.only(top: 2),
                              width: 19,
                              height: 19,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(0xFF870013),
                                ),
                              ),
                              child: const Text(
                                '2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFBF2026),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(0, context),
    );
  }
}
