import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({super.key});
  @override
  Widget build(BuildContext context) {
    return  Text("0", style: TextStyle(
      color: Colors.black,
      fontSize: 170,
      fontWeight: FontWeight.w400,
    ),);
  }
}
