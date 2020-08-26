import 'package:easycalculator/presentation/display.dart';
import 'package:easycalculator/presentation/side_nav.dart';
import 'package:flutter/material.dart';

class CalculatorMainPage extends StatefulWidget {
  @override
  _CalculatorMainPageState createState() => _CalculatorMainPageState();
}

class _CalculatorMainPageState extends State<CalculatorMainPage> {
  updateValue(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "X" ||
        buttonText == "%") {
      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        return;
      } else {
        print(_output);
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "%") {
        _output = (num1 % num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "X") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  String output = "0";
  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Display(
              displayValue: _output,
              number1: num1.toString(),
              number2: num2.toString(),
            ),
          ),
          Expanded(
            child: Container(
                color: Theme.of(context).brightness == Brightness.light?Colors.grey[100]:Colors.black,
                child: Column(children: [
                  Expanded(
                    child: Row(children: [
                      CalculatorButton("7"),
                      CalculatorButton("8"),
                      CalculatorButton("9"),
                      CalculatorButton("/")
                    ]),
                  ),
                  Expanded(
                    child: Row(children: [
                      CalculatorButton("4"),
                      CalculatorButton("5"),
                      CalculatorButton("6"),
                      CalculatorButton("X")
                    ]),
                  ),
                  Expanded(
                    child: Row(children: [
                      CalculatorButton("1"),
                      CalculatorButton("2"),
                      CalculatorButton("3"),
                      CalculatorButton("-")
                    ]),
                  ),
                  Expanded(
                    child: Row(children: [
                      CalculatorButton("."),
                      CalculatorButton("0"),
                      CalculatorButton("00"),
                      CalculatorButton("+")
                    ]),
                  ),
                  Expanded(
                    child: Row(children: [
                      CalculatorButton("CLEAR"),
                      CalculatorButton("="),
                      CalculatorButton("%"),
                    ]),
                  )
                ])),
          )
        ],
      ),
    );
  }

  Widget CalculatorButton(String symbol) {
    return Expanded(
      child: RaisedButton(
        color: Colors.transparent,
        elevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        onPressed: () {
          updateValue(symbol);
        },
        child: Container(
          child: Center(child: Text(symbol)),
        ),
      ),
    );
  }
}
