import 'package:calc_task_bloc/bloc/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetBtn extends StatelessWidget {
  const ResetBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              color: Color(0xff7bb0be),
              borderRadius: BorderRadius.circular(14),
            ),
            child: TextButton(
              // todo reset
              onPressed: () {
                BlocProvider.of<CalculatorBloc>(context).add(ResetEvent());
              },
              child: const Center(
                  child: Text(
                'Reset',
                style: TextStyle(
                  color: Color(0xff243844),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
            )),
      ],
    );
  }
}
