import 'package:basketballsm/cubit/getCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/incrementButton.dart';
import '../widgets/name_team.dart';
import '../widgets/score.dart';

class TeamB extends StatelessWidget {
  const TeamB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NameTeam(nameTeam: 'Team B',),
         Score(
           score:   BlocProvider.of<GetBasketBallCubit>(context).scoreTeamB,

        ),
        CustomIncrementButton(point: 1, onPressed: () {
              BlocProvider.of<GetBasketBallCubit>(context).teamPlay(incrementPoint: 1, teamName: "b");
        },),
        CustomIncrementButton(point: 2, onPressed: () {
          BlocProvider.of<GetBasketBallCubit>(context).teamPlay(incrementPoint: 2, teamName: "b");
        },),
        CustomIncrementButton(point: 3, onPressed: () {
          BlocProvider.of<GetBasketBallCubit>(context).teamPlay(incrementPoint: 3, teamName: "b");
        },),
      ],
    );
  }
}
