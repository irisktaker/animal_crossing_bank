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
            const EdgeInsets.only(top: 10, bottom: 15, left: 23, right: 23),
        child: ListView(
          children: [
            const BuildAppBar().buildAAppBar(context, size),
            buildTitle(text: 'Settings'.toUpperCase()),
            const SizedBox(height: 39),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(title: 'Card Settings'),
                Column(
                  children: [
                    subTitle(subtitle: 'Lost your Card?'),
                    subTitle(subtitle: 'Lock your account'),
                    subTitle(subtitle: 'Change your pin'),
                    subTitle(subtitle: 'auto Payments'),
                  ],
                ),
                const SizedBox(height: 9),
                title(title: 'Savings and Budgets'),
                subTitle(subtitle: 'Round up'),
                const SizedBox(height: 9),
                title(title: 'Account Information '),
                Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        title(title: 'Routing Numbers:'),
                        const Spacer(flex: 8),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: subTitle(subtitle: '0987564321234'),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        title(title: 'Account Numbers: '),
                        const Spacer(flex: 8),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: subTitle(subtitle: '4321098765123'),
                    ),
                  ],
                ),
                const SizedBox(height: 9),
                title(title: 'Privacy Information'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    subTitle(subtitle: 'Isabelle'),
                    subTitle(subtitle: 'Send and Receiving \$'),
                    subTitle(subtitle: 'Terms and Conditions '),
                    subTitle(subtitle: 'Legal Stuff'),
                  ],
                ),
                const SizedBox(height: 9),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(selectedIndex, context),
    );
  }

  Column subTitle({
    required String? subtitle,
  }) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 20),
            Text(
              subtitle!,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF037F76),
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2,
              ),
            ),
            const Spacer(flex: 8),
          ],
        ),
        const SizedBox(height: 9),
      ],
    );
  }

  Column title({
    required String? title,
  }) {
    return Column(
      children: [
        Text(
          title!,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF037F76),
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            fontFamily: 'kraboudja',
          ),
        ),
        const SizedBox(height: 18),
      ],
    );
  }
}
