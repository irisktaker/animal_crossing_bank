import 'package:animal_crossing_bank/custom_widgets/build_app_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/build_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ATMMap extends StatelessWidget {
  const ATMMap({Key? key}) : super(key: key);

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
            const BuildAppBar(
                ).buildAAppBar(context, size),
            Image.asset(
              'assets/images/img_17.png',
              width: size.width,
              height: 384,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
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
                        'assets/images/img_18.png',
                        width: 30,
                        height: 32,
                      ),
                      const SizedBox(width: 6),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('F-3'),
                          Text('Home Island'),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text('0.4 mi'),
                          Text(
                            'Open',
                            style: TextStyle(color: Color(0xFF17938A)),
                          ),
                          Text('Open until 7pm'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/img_19.png',
                        width: 30,
                        height: 32,
                      ),
                      const SizedBox(width: 6),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('E-1'),
                          Text('Island Shop'),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text('0.4 mi'),
                          Text(
                            'Open',
                            style: TextStyle(color: Color(0xFF17938A)),
                          ),
                          Text('Open until 9pm'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/img_19.png',
                        width: 30,
                        height: 32,
                      ),
                      const SizedBox(width: 6),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('E-1'),
                          Text('Island Shop'),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text('0.4 mi'),
                          Text(
                            'Open',
                            style: TextStyle(color: Color(0xFF17938A)),
                          ),
                          Text('Open until 9pm'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(3, context),
    );
  }
}
