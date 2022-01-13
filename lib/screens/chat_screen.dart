import 'package:animal_crossing_bank/custom_widgets/build_app_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 15, left: 23, right: 23),
        child: ListView(
          children: [
            const BuildAppBar().buildAAppBar(context, size),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/arrow_back.png',
                    width: 14,
                    height: 18,
                  ),
                ),
                const SizedBox(width: 12),
                buildTitle(text: 'Chat'.toUpperCase()),
              ],
            ),
            const SizedBox(height: 42),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Image.asset(
                  'assets/images/img_6.png',
                  width: 34,
                  height: 36,
                ),
                const SizedBox(width: 15),
                Container(
                  width: 173,
                  // height: 51,
                  decoration: BoxDecoration(
                    color: const Color(0x89027f76),
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 14, right: 14, top: 9, bottom: 6),
                    child: Text(
                      'Hi I’m Tom Nook How can I assist you?',
                      // maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                        backgroundColor: Colors.transparent,
                        color: Colors.white,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
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
                  fillColor: const Color(0xFF037F76).withOpacity(0.22),
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
                  const Color(0xFF037F76),
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
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
