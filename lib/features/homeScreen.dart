import 'package:basketballsm/features/views/team_a.dart';
import 'package:basketballsm/features/views/team_b.dart';
import 'package:basketballsm/features/widgets/vertical_divider.dart';
import 'package:flutter/material.dart';

import 'widgets/resetbutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.blue,
        title: const Center(
          child: Text(
            "Points Counter",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.08,
          vertical: MediaQuery.sizeOf(context).height * 0.05,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TeamA(),
                CustomVerticalDivider(),
                TeamB(),
              ],
            ),
            ResetButton(),
          ],
        ),
      ),
    );
  }
}
