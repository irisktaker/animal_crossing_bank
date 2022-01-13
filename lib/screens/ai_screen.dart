import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:animal_crossing_bank/screens/bottom_navigate_screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

class AIScreen extends StatelessWidget {
  const AIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF0C756D),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 15, left: 23, right: 23),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(
                    'assets/images/img_24.png',
                    width: 15,
                    height: 18,
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => const HomePage(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: const Duration(milliseconds: 300),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/img_2.png',
                    width: 85,
                    height: 85,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 11,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xFF037F76),
                        radius: 1.5,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Container(
                        width: 3,
                        height: 10,
                        color: const Color(0xFF037F76),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 53),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 46),
                  child: Text(
                    'Hi my name is Isabelle!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: 'PermanentMarker-Regular',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: buildDivider(color: Colors.white),
                ),
                const SizedBox(height: 33),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'How may I help you today?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 21),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 2.5,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Check your weekly spending.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 2.5,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Recent activity.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 2.5,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Check data insights',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 54),
                Container(
                  width: size.width,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/img_23.png',
                        width: 44,
                        height: 44,
                      ),
                      const SizedBox(width: 14),
                      const SizedBox(
                        width: 195,
                        child: Text(
                          'Look at your spending and Income charts. ',
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xFFC8E3E1),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'View',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF037F76),
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
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          children: [
            Container(
              width: size.width - 100,
              height: 32,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Send message',
                  hintStyle: const TextStyle(
                    color: Color(0xFF037F76),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: 1.1,
                    height: 0.70,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFFC8E3E1),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: const Text(
                'Send',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF037F76),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
