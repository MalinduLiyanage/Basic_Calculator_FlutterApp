import 'package:calculator/ui_components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:calculator/calculations.dart';

class baseWidget extends StatefulWidget {
  const baseWidget({super.key});

  @override
  State<baseWidget> createState() => _baseWidgetState();
}

class _baseWidgetState extends State<baseWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      clearCalculator();
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll<Color>(
                          Theme.of(context).colorScheme.primary)),
                  child: Text(
                    "Clear Calculations",
                    style: TextStyle(color: Colors.white),
                  )),
              Expanded(
                child: SizedBox(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Operation",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "$displayString",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Result",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "$result",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        clickBtn(context, "1", () {
                          setState(() {
                            operands += "1";
                            displayString += "1";
                          });
                        }),
                        clickBtn(context, "2", () {
                          setState(() {
                            operands += "2";
                            displayString += "2";
                          });
                        }),
                        clickBtn(context, "3", () {
                          setState(() {
                            operands += "3";
                            displayString += "3";
                          });
                        }),
                        clickBtn(context, "/", () {
                          setState(() {
                            operands += " ";
                            operators += "/";
                            displayString += " / ";
                          });
                        })
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      clickBtn(context, "4", () {
                        setState(() {
                          operands += "4";
                          displayString += "4";
                        });
                      }),
                      clickBtn(context, "5", () {
                        setState(() {
                          operands += "5";
                          displayString += "5";
                        });
                      }),
                      clickBtn(context, "6", () {
                        setState(() {
                          operands += "6";
                          displayString += "6";
                        });
                      }),
                      clickBtn(context, "*", () {
                        setState(() {
                          operands += " ";
                          operators += "*";
                          displayString += " * ";
                        });
                      })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      clickBtn(context, "7", () {
                        setState(() {
                          operands += "7";
                          displayString += "7";
                        });
                      }),
                      clickBtn(context, "8", () {
                        setState(() {
                          operands += "8";
                          displayString += "8";
                        });
                      }),
                      clickBtn(context, "9", () {
                        setState(() {
                          operands += "9";
                          displayString += "9";
                        });
                      }),
                      clickBtn(context, "-", () {
                        setState(() {
                          operands += " ";
                          operators += "-";
                          displayString += " - ";
                        });
                      })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      clickBtn(context, "0", () {
                        setState(() {
                          operands += "0";
                          displayString += "0";
                        });
                      }),
                      clickBtn(context, ".", () {
                        setState(() {
                          operands += ".";
                          displayString += ".";
                        });
                      }),
                      clickBtn(context, "=", () {
                        setState(() {
                          startCalculation();
                        });
                      }),
                      clickBtn(context, "+", () {
                        setState(() {
                          operands += " ";
                          operators += "+";
                          displayString += " + ";
                        });
                      })
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
