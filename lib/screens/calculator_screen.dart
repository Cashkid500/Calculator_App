import 'package:calculator_app/constants/text_constants.dart';
import 'package:calculator_app/utils/calculator_functions.dart';
import 'package:calculator_app/utils/margins/y_margin.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorFunctions calculatorFunctions = CalculatorFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: Text(
                calculatorFunctions.expression,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            const YMargin(20),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: Text(
                calculatorFunctions.result,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
            const YMargin(20),
        
            // First Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: CalculatorAppTexts.clear,
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.clear);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.delete,
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.delete);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.percentage,
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.percentage);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.divided,
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.divided);
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
        
            // Second Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: CalculatorAppTexts.seven,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.seven);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.eight,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.eight);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.nine,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.nine);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.multiply,
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.multiply);
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
        
            // Third Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: CalculatorAppTexts.four,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.four);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.five,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.five);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.six,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.six);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.minus,
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.minus);
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
        
            // Fourth Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: CalculatorAppTexts.one,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.one);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.two,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.two);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.three,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.three);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.plus,
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.plus);
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
        
            // Fifth Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: CalculatorAppTexts.zero,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.zero);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.dot,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.dot);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.doubleZero,
                  buttonColor: Colors.white12,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.doubleZero);
                    });
                  },
                ),
                CalculatorButton(
                  buttonText: CalculatorAppTexts.equal,
                  buttonColor: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      calculatorFunctions.calculate(CalculatorAppTexts.equal);
                    });
                  },
                ),
              ],
            ),
            const YMargin(20),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.08,
      width: size.height * 0.08,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: const CircleBorder(),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
