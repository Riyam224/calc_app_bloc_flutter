import 'package:calc_task_bloc/bloc/calculator_bloc.dart';
import 'package:calc_task_bloc/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatelessWidget {
  const CalcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // todo
      home: BlocProvider(
        create: (context) => CalculatorBloc(),
        child: HomeView(),
      ),
    );
  }
}
