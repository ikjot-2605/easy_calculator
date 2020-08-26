import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String displayValue;
  final String number2;
  final String number1;
  const Display({Key key, this.displayValue, this.number1, this.number2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topRight,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8.0,right: 8.0),
              child: Text(
                displayValue,
                style: TextStyle(fontSize: 20.0,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
