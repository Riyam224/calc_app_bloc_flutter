import 'package:flutter/material.dart';

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
              onPressed: () {},
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
