import 'package:flutter/material.dart';

class CustomIncrementButton extends StatelessWidget {
    CustomIncrementButton({super.key, required this.point,required this.onPressed});
   final int point;
   void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ), child: Text("Add $point Points",
      style: TextStyle(
        color: Colors.white,
      ),
      ),

    );
  }
}
