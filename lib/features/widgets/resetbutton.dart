import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/get_cubit.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 2,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width*0.5,
        child: ElevatedButton(
          onPressed: () {
            BlocProvider.of<GetBasketBallCubit>(context).resetScores();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          child: const Text(
            "Reset",
            style: TextStyle(color: Colors.white,
            fontSize: 20
            ),
          ),
        ),
      ),
    );
  }
}
