import 'package:basketballsm/cubit/getState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class GetBasketBallCubit extends Cubit<BasketBallState>{
  GetBasketBallCubit():super(BasketBallInitalState());
  int scoreTeamA=0;
  int scoreTeamB=0;
  GetTeam_A_Play({required int incrementPoint,required String teamName}){
     if(teamName=="a"||teamName=="A"){
       scoreTeamA+=incrementPoint;
     emit(TeamAState());
     }
     else if(teamName=="b"||teamName=="B"){{
       scoreTeamB+=incrementPoint;
       emit(TeamBState());
     }
     }
  }

}