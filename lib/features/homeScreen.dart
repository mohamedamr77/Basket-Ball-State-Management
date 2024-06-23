import 'package:basketballsm/features/views/team_a.dart';
import 'package:basketballsm/features/views/team_b.dart';
import 'package:basketballsm/features/widgets/vertical_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF29607),
        title: Center(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TeamA(),
                CustomVerticalDivider(),
                TeamB(),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 2.5,
                child: ElevatedButton(onPressed: (){}, child: Text("Reset",
                  style: TextStyle(color :Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange
                ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
