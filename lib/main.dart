import 'package:basketballsm/cubit/getCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/homeScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetBasketBallCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),),
    );
  }
}