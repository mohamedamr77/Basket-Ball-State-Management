import 'package:basketballsm/cubit/get_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetBasketBallCubit extends Cubit<BasketBallState> {
  GetBasketBallCubit() : super(BasketBallInitalState());

  int scoreTeamA = 0;
  int scoreTeamB = 0;

  void teamPlay({required int incrementPoint, required String teamName}) {
    if (teamName == "a" || teamName == "A") {
      scoreTeamA += incrementPoint;
      emit(TeamAState());
    } else if (teamName == "b" || teamName == "B") {
      scoreTeamB += incrementPoint;
      emit(TeamBState());
    }
  }

  void resetScores() {
    scoreTeamA = 0;
    scoreTeamB = 0;
    emit(BasketBallInitalState());
  }
}
