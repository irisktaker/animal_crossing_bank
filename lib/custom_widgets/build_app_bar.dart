import 'package:animal_crossing_bank/screens/ai_screen.dart';
import 'package:animal_crossing_bank/screens/bottom_navigate_screens/home_page/home_page.dart';
import 'package:animal_crossing_bank/screens/chat_screen.dart';
import 'package:animal_crossing_bank/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return buildAAppBar(context, size);
  }

  Padding buildAAppBar(BuildContext context, Size size) {
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

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => const SettingsScreen(),
                transitionsBuilder: (c, anim, a2, child) =>
                    FadeTransition(opacity: anim, child: child),
                transitionDuration: const Duration(milliseconds: 300),
              ),
            ),
            child: buildIconImage(imageURL: 'assets/images/img.png'),
          ),
          InkWell(
              onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => const ChatScreen(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: const Duration(milliseconds: 300),
                    ),
                  ),
              child: buildIconImage(imageURL: 'assets/images/img_1.png')),
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
            child: buildIconImage(
                imageURL: 'assets/images/animal_Crossing_pattern.png',
                width: 70,
                height: 66),
          ),
          SizedBox(width: size.width * 0.10),
          InkWell(
            onTap: () => Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => const AIScreen(),
                transitionsBuilder: (c, anim, a2, child) =>
                    FadeTransition(opacity: anim, child: child),
                transitionDuration: const Duration(milliseconds: 300),
              ),
            ),
            child: buildIconImage(
                imageURL: 'assets/images/img_2.png', width: 60, height: 60),
          ),
        ],
      ),
    );
  }
}

// InkWell(
//         onTap: () => Navigator.push(
//             context,
//             PageRouteBuilder(
//                 pageBuilder: (c, a1, a2) => widget!,
//                 transitionsBuilder: (c, anim, a2, child) =>
//                     FadeTransition(opacity: anim, child: child),
//                 transitionDuration: const Duration(milliseconds: 300))),
        
