import 'package:animal_crossing_bank/custom_widgets/build_app_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/build_bottom_navigation_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:animal_crossing_bank/screens/bottom_navigate_screens/home_page/spending_page.dart';
import 'package:flutter/material.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({Key? key}) : super(key: key);

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
                      const SizedBox(width: 2),
                      Container(
                        width: 127 / 2,
                        height: 18,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF87C89F),
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (c, a1, a2) =>
                                    const SpendingScreen(),
                                transitionsBuilder: (c, anim, a2, child) =>
                                    FadeTransition(opacity: anim, child: child),
                                transitionDuration:
                                    const Duration(milliseconds: 300))),
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
            Column(
              children: [
                const Text(
                  '\$ 5,500.00',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'December’s Spending',
                      style: TextStyle(
                        fontSize: 21,
                        letterSpacing: 2,
                        color: Color(0xFF83C0BC),
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                      color: Color(0xFF83C0BC),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rectangleRow(text: 'd'),
                    rectangleRow(text: 'w'),
                    rectangleRow(text: 'm', color: const Color(0xFF3EBAB1)),
                    rectangleRow(text: 'y'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 64),
            Image.asset('assets/images/img_21.png'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('0', style: TextStyle(fontSize: 10)),
                Text('5', style: TextStyle(fontSize: 10)),
                Text('15', style: TextStyle(fontSize: 10)),
                Text('25', style: TextStyle(fontSize: 10)),
                Text('31', style: TextStyle(fontSize: 10)),
              ],
            ),
            const SizedBox(height: 54),
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
                      const Text('Tom Nook: Loan for House'),
                      const Spacer(),
                      const Text(
                        '+ \$50,000.00',
                        style: TextStyle(color: Color(0xFF17938A)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/img_20.png',
                        width: 30,
                        height: 32,
                      ),
                      const SizedBox(width: 6),
                      const Text('Deposited Bells'),
                      const Spacer(),
                      const Text(
                        '+ \$9,000.00',
                        style: TextStyle(color: Color(0xFF17938A)),
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

  Container rectangleRow({
    Color color = const Color(0xFF037F76),
    required String? text,
  }) {
    return Container(
      width: 71,
      height: 31,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(11),
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey,
              offset: Offset(0.0, 4.0),
            ),
          ]),
      child: Center(
        child: Text(
          text!.toUpperCase(),
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
