import 'package:flutter/material.dart';

class NameTeam extends StatelessWidget {
   const NameTeam({super.key, required this.nameTeam});
  final String nameTeam;
  @override
  Widget build(BuildContext context) {
    return  Text(nameTeam,
      style:const TextStyle(
        color: Colors.black,
        fontSize: 35,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
