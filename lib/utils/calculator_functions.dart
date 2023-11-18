import 'package:calculator_app/constants/text_constants.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorFunctions {
  String expression = CalculatorAppTexts.emptyString;
  String result = CalculatorAppTexts.emptyString;

  void calculate(String buttonText) {
    if (buttonText == CalculatorAppTexts.clear) {
      expression = CalculatorAppTexts.emptyString;
      result = CalculatorAppTexts.emptyString;
    } else if (buttonText == CalculatorAppTexts.delete) {
      expression = expression.substring(0, expression.length - 1);
    } else if (buttonText == CalculatorAppTexts.equal) {
      try {
        Parser p = Parser();
        Expression exp = p.parse(expression);
        ContextModel cm = ContextModel();
        final evaluatedExpression = exp.evaluate(EvaluationType.REAL, cm);
        result =
            '${isInteger(evaluatedExpression) ? (evaluatedExpression as double).ceil() : evaluatedExpression}';
        expression = result;
      } catch (e) {
        result = 'Error $e';
      }
    } else {
      expression += buttonText;
    }
  }
}

bool isInteger(num value) => value is int || value == value.roundToDouble();
