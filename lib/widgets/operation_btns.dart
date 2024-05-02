// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OperationBtns extends StatelessWidget {
  const OperationBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 350,
      decoration: BoxDecoration(
        color: const Color(0xff7bb0be),
        borderRadius: BorderRadius.circular(16),
        // todo
        border: Border.all(
          color: const Color(0xff2f4b56),
          width: 2.0,
        ),
      ),
      // todo main col
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // todo first row
                Padding(
                  // todo padding
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'First Number     ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: Center(
                              child: Text(
                            '+',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffadafae),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: Center(
                              child: Text(
                            '-',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffcbcdc8),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
                  ),
                ),
                // todo

                Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffc4c6c3),
                      borderRadius: BorderRadius.circular(16)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Addition (+)',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(
                          0xff303e3f,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // todo
                SizedBox(
                  height: 6,
                ),
                // todo

                Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffc4c6c3),
                      borderRadius: BorderRadius.circular(16)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Substraction (-)',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(
                          0xff303e3f,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // todo
                SizedBox(
                  height: 6,
                ),
                // todo

                Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffc4c6c3),
                      borderRadius: BorderRadius.circular(16)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Multiple (*)',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(
                          0xff303e3f,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // todo
                SizedBox(
                  height: 6,
                ),
                // todo

                Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffc4c6c3),
                      borderRadius: BorderRadius.circular(16)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Division (/)',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(
                          0xff303e3f,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  // todo padding
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Second Number ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: Center(
                              child: Text(
                            '+',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffadafae),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 50,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          child: Center(
                              child: Text(
                            '-',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffcbcdc8),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
