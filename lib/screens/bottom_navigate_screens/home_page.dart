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
      backgroundColor: Colors.white,
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
            const SizedBox(height: 26),
            Container(
              padding: const EdgeInsets.all(11),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFF037F76),
                        radius: 11,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 1.5,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              width: 3,
                              height: 10,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Charle Doe',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          '••••    ••••    ••••',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            letterSpacing: 4,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '1234',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            'Checking balance',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$ 1,234.00',
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Color(0xFF17938A)),
                          ),
                        ],
                      ),
                      Container(
                        width: 1.5,
                        height: 60,
                        color: Colors.black,
                      ),
                      Column(
                        children: const [
                          Text(
                            'Savings Balance',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$ 59,201.00',
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Color(0xFF17938A)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
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
                ],
              ),
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Color(0xFF8D8B8B),
                  maxRadius: 4,
                ),
                SizedBox(width: 4),
                CircleAvatar(
                  backgroundColor: Color(0xFFC4C4C4),
                  maxRadius: 10,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 43),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/img_4.png',
                      width: 45,
                      height: 45,
                    ),
                    const Text('Send'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/img_5.png',
                      width: 45,
                      height: 45,
                    ),
                    const Text('Receive/Request'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/img_6.png',
                      width: 45,
                      height: 45,
                    ),
                    const Text('Borrow'),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Current Income &Transactions'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See All >',
                    style: TextStyle(color: Color(0xFF024641)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
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
                        'assets/images/img_7.png',
                        width: 30,
                        height: 32,
                      ),
                      const SizedBox(width: 6),
                      const Text('Fossils: Customer Purchase'),
                      const Spacer(),
                      const Text(
                        '+ \$300.00',
                        style: TextStyle(color: Color(0xFF17938A)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/img_8.png',
                        width: 30,
                        height: 32,
                      ),
                      const SizedBox(width: 6),
                      const Text('Tickets'),
                      const Spacer(),
                      const Text(
                        '- \$30.00',
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
                        '- \$12.99',
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
      bottomNavigationBar: buildBottomNavigationBar(0, context),
    );
  }
}
