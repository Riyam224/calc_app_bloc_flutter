import 'package:calc_task_bloc/widgets/operation_btns.dart';
import 'package:calc_task_bloc/widgets/reset_btn.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
            height: 130,
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
                  // todo number1
                  const Text(
                    '6',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff36171e),
                    ),
                  ),
                  // todo the operator
                  Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xffa8918b),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      '+',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff36171e),
                      ),
                    ),
                  ),
                  // todo number 2
                  const Text(
                    '6',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff9a6334),
                    ),
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
                  const Text(
                    '12',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff185334),
                    ),
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
