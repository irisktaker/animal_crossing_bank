import 'package:animal_crossing_bank/custom_widgets/build_app_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/build_bottom_navigation_bar.dart';
import 'package:animal_crossing_bank/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 15, left: 23, right: 23) ,
        child: ListView(
          children: [
            const BuildAppBar().buildAAppBar(context, size),
            buildTitle(text: 'Settings'.toUpperCase()),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(selectedIndex, context),
    );
  }
}
