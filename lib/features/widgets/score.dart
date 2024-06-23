import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  Score({super.key,required this.score});
  int score;
  @override
  Widget build(BuildContext context) {
    return  FittedBox(
      child: Text("$score", style: TextStyle(
        color: Colors.black,
        fontSize: 170,
        fontWeight: FontWeight.w400,
      ),),
    );
  }
}
