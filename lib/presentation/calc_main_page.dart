import 'package:easycalculator/common/keys.dart';
import 'package:easycalculator/presentation/calculator_button.dart';
import 'package:easycalculator/presentation/display.dart';
import 'package:flutter/material.dart';

class CalculatorMainPage extends StatefulWidget {
  @override
  _CalculatorMainPageState createState() => _CalculatorMainPageState();
}

class _CalculatorMainPageState extends State<CalculatorMainPage> {
  double currval;
  String currStr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Display(displayValue: "5",),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[100],
              child: Column(

                  children: [
                    Expanded(
                      child: Row(
                          children: <Widget>[
                            CalculatorButton(symbol: Keys.clear),
                            CalculatorButton(symbol: Keys.sign),
                            CalculatorButton(symbol: Keys.percent),
                            CalculatorButton(symbol: Keys.divide),
                          ]
                      ),
                    ),
                    Expanded(
                      child: Row(
                          children: <Widget>[
                            CalculatorButton(symbol: Keys.seven),
                            CalculatorButton(symbol: Keys.eight),
                            CalculatorButton(symbol: Keys.nine),
                            CalculatorButton(symbol: Keys.multiply),
                          ]
                      ),
                    ),
                    Expanded(
                      child: Row(
                          children: <Widget>[
                            CalculatorButton(symbol: Keys.four),
                            CalculatorButton(symbol: Keys.five),
                            CalculatorButton(symbol: Keys.six),
                            CalculatorButton(symbol: Keys.subtract),
                          ]
                      ),
                    ),
                    Expanded(
                      child: Row(
                          children: <Widget>[
                            CalculatorButton(symbol: Keys.one),
                            CalculatorButton(symbol: Keys.two),
                            CalculatorButton(symbol: Keys.three),
                            CalculatorButton(symbol: Keys.add),
                          ]
                      ),
                    ),
                    Expanded(
                      child: Row(
                          children: <Widget>[
                            CalculatorButton(symbol: Keys.zero),
                            CalculatorButton(symbol: Keys.decimal),
                            CalculatorButton(symbol: Keys.equals),
                          ]
                      ),
                    )
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
