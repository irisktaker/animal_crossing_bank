import 'package:animal_crossing_bank/custom_widgets/build_app_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/build_bottom_navigation_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/build_main_btn.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 15, left: 23, right: 23),
        child: ListView(
          children: [
            buildAAppBar(size),
            buildTitle(text: 'Transfers'),
            const SizedBox(height: 32),
            Row(
              children: [
                buildTitle(text: 'Form: ', size: 14),
                buildTitle(text: 'Checking', size: 14),
              ],
            ),
            const SizedBox(height: 13),
            Container(
              padding: const EdgeInsets.only(
                  left: 94, right: 24, top: 21, bottom: 22),
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
              child: const Text(
                '\$ 1,234.00',
                style: TextStyle(
                  fontSize: 45,
                  color: Color(0xFF17938A),
                ),
              ),
            ),
            const SizedBox(height: 38),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.arrow_upward,
                  size: 34,
                  color: Color(0xFF17938A),
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 34,
                  color: Color(0xFF17938A),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                buildTitle(text: 'To: \t\t', size: 14),
                buildTitle(text: 'Savings', size: 14),
              ],
            ),
            const SizedBox(height: 13),
            Container(
              padding: const EdgeInsets.only(
                  left: 94, right: 24, top: 21, bottom: 22),
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
              child: const Text(
                '\$ 59,201.00',
                style: TextStyle(
                  fontSize: 45,
                  color: Color(0xFF17938A),
                ),
              ),
            ),
            const SizedBox(height: 64),
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
      bottomNavigationBar: buildBottomNavigationBar(1, context),
    );
  }
}
