import 'package:animal_crossing_bank/custom_widgets/build_app_bar.dart';
import 'package:flutter/material.dart';

class AIScreen extends StatelessWidget {
  const AIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          BuildAppBar().buildAAppBar(context, size),
          Center(
            child: Text('Ai Screen'),
          ),
        ],
      ),
    );
  }
}
