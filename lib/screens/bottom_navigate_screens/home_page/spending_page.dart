import 'package:animal_crossing_bank/custom_widgets/build_app_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/build_bottom_navigation_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:animal_crossing_bank/screens/bottom_navigate_screens/home_page/income_page.dart';
import 'package:flutter/material.dart';

class SpendingScreen extends StatelessWidget {
  const SpendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 15, left: 23, right: 23),
        child: ListView(
          children: [
            buildAAppBar(size),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildTitle(text: 'Current Income', size: 14),
                Container(
                  width: 127,
                  height: 22,
                  decoration: BoxDecoration(
                    color: const Color(0xFF037F76),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (c, a1, a2) =>
                                    const IncomeScreen(),
                                transitionsBuilder: (c, anim, a2, child) =>
                                    FadeTransition(opacity: anim, child: child),
                                transitionDuration:
                                    const Duration(milliseconds: 300))),
                        child: Text(
                          'income'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 127 / 2,
                        height: 18,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF87C89F),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'spending'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6,
                    offset: Offset(0.6, 0.8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: 42,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE7E4E4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/img_6.png',
                        width: 30,
                        height: 32,
                      ),
                      const SizedBox(width: 6),
                      const Text('Tom Nook: Shop'),
                      const Spacer(),
                      const Text(
                        '- \$5,000.00',
                        style: TextStyle(color: Color(0xFF9A1E1F)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/img_9.png',
                        width: 30,
                        height: 32,
                      ),
                      const SizedBox(width: 6),
                      const Text('Tools'),
                      const Spacer(),
                      const Text(
                        '- \$500.00',
                        style: TextStyle(color: Color(0xFF9A1E1F)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(selectedIndex, context),
    );
  }
}