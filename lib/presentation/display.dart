import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String displayValue;
  const Display({Key key, this.displayValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top:8.0,right: 8.0),
            child: Text(
              displayValue,
              style: TextStyle(fontSize: displayValue.substring(0,1)=="B"?15.0:25.0),
            ),
          ),
        ),
      ),
    );
  }
}
