import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int score;

  const Score({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double adaptiveFontSize = screenWidth * 0.21; // Adjust the factor as needed

    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 40),
      child: FittedBox(
        child: SizedBox(
          width: 130, // Fixed width to ensure space does not change
          child: Text(
            "$score",
            style: TextStyle(
              color: Colors.black,
              fontSize: adaptiveFontSize,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center, // Center align the text within the fixed width
          ),
        ),
      ),
    );
  }
}
