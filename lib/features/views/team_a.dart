import 'package:basketballsm/cubit/getCubit.dart';
import 'package:basketballsm/cubit/getState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocBuilder<GetBasketBallCubit,BasketBallState>(builder: (BuildContext context, state) {
          return Score(
            score: BlocProvider.of<GetBasketBallCubit>(context).scoreTeamA,
          );
        },),
        CustomIncrementButton(point: 1, onPressed: () {
          BlocProvider.of<GetBasketBallCubit>(context).teamPlay(incrementPoint: 1, teamName: "a");
        },),
        CustomIncrementButton(point: 2, onPressed: () {
          BlocProvider.of<GetBasketBallCubit>(context).teamPlay(incrementPoint: 2, teamName: "a");

        },),
        CustomIncrementButton(point: 3, onPressed: () {
          BlocProvider.of<GetBasketBallCubit>(context).teamPlay(incrementPoint: 3, teamName: "a");

        },),
      ],
    );
  }
}
