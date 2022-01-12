import 'package:animal_crossing_bank/screens/bottom_navigate_screens/atm_map.dart';
import 'package:animal_crossing_bank/screens/bottom_navigate_screens/check_scan_page.dart';
import 'package:animal_crossing_bank/screens/bottom_navigate_screens/home_page/home_page.dart';
import 'package:animal_crossing_bank/screens/bottom_navigate_screens/transfer_page.dart';
import 'package:flutter/material.dart';

int selectedIndex = 0;

Container buildBottomNavigationBar(int selectedIndex, BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0)),
      boxShadow: [
        BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
      ],
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15.0),
        topRight: Radius.circular(15.0),
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          // onItemTapped;
          selectedIndex = value;

          value == 0
              ? Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => const HomePage(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: const Duration(milliseconds: 300)))
              : null;

          value == 1
              ? Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => const TransferPage(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: const Duration(milliseconds: 300)))
              : null;

          value == 2
              ? Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => const CheckScanPage(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: const Duration(milliseconds: 300)))
              : null;

          value == 3
              ? Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => const ATMMap(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: const Duration(milliseconds: 300)))
              : null;
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/img_10.png',
              height: 50,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/img_11.png',
              height: 50,
            ),
            label: 'Transfer',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/img_12.png',
              height: 50,
            ),
            label: 'Check',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/img_13.png',
              height: 50,
            ),
            label: 'Atm Location',
          ),
        ],
      ),
    ),
  );
}
