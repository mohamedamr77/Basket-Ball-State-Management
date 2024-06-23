import 'package:flutter/material.dart';

import '../widgets/incrementButton.dart';
import '../widgets/name_team.dart';
import '../widgets/score.dart';

class TeamA extends StatelessWidget {
  const TeamA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NameTeam(nameTeam: 'Team A',),
        Score(),
        CustomIncrementButton(point: 1, onPressed: () {  },),
        CustomIncrementButton(point: 2, onPressed: () {  },),
        CustomIncrementButton(point: 3, onPressed: () {  },),
      ],
    );
  }
}
