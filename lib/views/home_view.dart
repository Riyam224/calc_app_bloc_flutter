// ignore_for_file: unused_local_variable, unnecessary_brace_in_string_interps

import 'package:calc_task_bloc/bloc/calculator_bloc.dart';
import 'package:calc_task_bloc/widgets/operation_btns.dart';
import 'package:calc_task_bloc/widgets/reset_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
// todo
  @override
  Widget build(BuildContext context) {
    // todo
    // final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);
    return Scaffold(
      appBar: AppBar(
          title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Calculator ',
            style: TextStyle(
              color: Color.fromARGB(255, 23, 134, 146),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.calculate,
            color: Color.fromARGB(255, 23, 134, 146),
          ),
        ],
      )),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          // todo container
          Center(
            child: Container(
              //todo
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xff7bb0be),
                borderRadius: BorderRadius.circular(16),
                // todo
                border: Border.all(
                  color: const Color(0xff2f4b56),
                  width: 2.0,
                ),
              ),
              // todo row the numbers
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // todo number 1 ___________
                  BlocBuilder<CalculatorBloc, CalculatorState>(
                    builder: (context, state) {
                      if (state is CalculatorInitial) {
                        return const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff36171e),
                          ),
                        );
                      } else if (state is CounterValueChanged) {
                        return Text(
                          "${state.counter1}",
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xff36171e),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),

                  // todo the operator +
                  Container(
                      width: 40,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffa8918b),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // todo operator
                      child: Center(
                          child: BlocBuilder<CalculatorBloc, CalculatorState>(
                        builder: (context, state) {
                          if (state is CalculatorInitial) {
                            return TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Color(0xff36171e),
                                  ),
                                ));
                          } else if (state is CounterValueChanged) {
                            return TextButton(
                                onPressed: () {},
                                child: Text(
                                  "${state.operator}",
                                  style: const TextStyle(
                                    fontSize: 30,
                                    color: Color(0xff36171e),
                                  ),
                                ));
                          } else {
                            return Container();
                          }
                        },
                      ))),
                  // todo number 2
                  BlocBuilder<CalculatorBloc, CalculatorState>(
                    builder: (context, state) {
                      if (state is CalculatorInitial) {
                        return const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff36171e),
                          ),
                        );
                      } else if (state is CounterValueChanged) {
                        return Text(
                          "${state.counter2}",
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xff36171e),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                  // todo =
                  const Text(
                    '=',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff36171e),
                    ),
                  ),
                  // todo the result
                  BlocBuilder<CalculatorBloc, CalculatorState>(
                    builder: (context, state) {
                      if (state is CalculatorInitial) {
                        return const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff36171e),
                          ),
                        );
                      } else if (state is CounterValueChanged) {
                        return Text(
                          "${state.result}",
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xff36171e),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          // todo
          const SizedBox(
            height: 20,
          ),
          // todo
          const OperationBtns(),
          // todo
          const ResetBtn(),
        ],
      ),
    );
  }
}
