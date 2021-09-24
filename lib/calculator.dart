import 'package:flutter/material.dart';

import 'button.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final List<String> ButtonItems = [
    "C",
    "DEL",
    "%",
    "/",
    "9",
    "8",
    "7",
    "x",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "ANS",
    "="
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[100],
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "2+7",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                    itemCount: ButtonItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Button(
                            colour: Colors.black,
                            textColour: Colors.white,
                            buttonText: ButtonItems[index]);
                      }
                      if (index == 1) {
                        return Button(
                            colour: Colors.red,
                            textColour: Colors.white,
                            buttonText: ButtonItems[index]);
                      }

                      return Button(
                          colour: isOperator(ButtonItems[index])
                              ? Colors.teal
                              : Colors.white,
                          textColour: isOperator(ButtonItems[index])
                              ? Colors.white
                              : Colors.black,
                          buttonText: ButtonItems[index]);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == "%" || x == "/" || x == "x" || x == "-" || x == "+" || x == "=") {
      return true;
    }
    return false;
  }
}
