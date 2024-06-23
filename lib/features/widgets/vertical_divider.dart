import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height*0.55,
        child: const VerticalDivider(
          width: 10,
          thickness: 1,
        ),
      ),
    );
  }
}
