import 'package:animal_crossing_bank/custom_widgets/build_app_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/build_bottom_navigation_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/build_main_btn.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class CheckScanPage extends StatelessWidget {
  const CheckScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 15, left: 23, right: 23),
        child: ListView(
          children: [
            buildAAppBar(size),
            buildTitle(text: 'Check Deposit'),
            const SizedBox(height: 32),
            buildTitle(text: 'Scan Front of Check', size: 14),
            const SizedBox(height: 13),
            Container(
              padding: const EdgeInsets.only(
                  left: 38, right: 38, top: 33, bottom: 33),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0.6, 0.8),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/img_14.png',
                    width: 80,
                    height: 43,
                  ),
                  Image.asset(
                    'assets/images/img_15.png',
                    width: 80,
                    height: 43,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 33),
            buildTitle(text: 'Scan Back of Check:', size: 14),
            const SizedBox(height: 13),
            Container(
              padding: const EdgeInsets.only(
                  left: 38, right: 38, top: 33, bottom: 33),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(0.6, 0.8),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/img_15.png',
                    width: 80,
                    height: 43,
                  ),
                  Image.asset(
                    'assets/images/img_14.png',
                    width: 80,
                    height: 43,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Column(
              children: [
                Image.asset(
                  'assets/images/img_16.png',
                  width: 236,
                  height: 90,
                ),
                const SizedBox(height: 14),
                Image.asset(
                  'assets/images/img_16.png',
                  width: 236,
                  height: 90,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMainBtn(
                  text: 'finished'.toUpperCase(),
                  btnColor: const Color(0xFF037F76),
                  textColor: const Color(0xFFFFFFFF),
                  press: () {},
                  minimumSize: const Size(124, 40),
                  fontSize: 14,
                  padding: const EdgeInsets.all(0),
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(2, context),
    );
  }
}
