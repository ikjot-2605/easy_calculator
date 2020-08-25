import 'package:easycalculator/common/keys.dart';
import 'package:flutter/material.dart';
class CalculatorButton extends StatelessWidget {
  final KeySymbol symbol;

  const CalculatorButton({Key key, this.symbol}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        color: Colors.transparent,
        elevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        onPressed: (){

        },
        child: Container(
          child: Center(child: Text(symbol.value)),
        ),
      ),
    );
  }
}
