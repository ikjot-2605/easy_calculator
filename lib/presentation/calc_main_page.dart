import 'package:flutter/material.dart';

class CalculatorMainPage extends StatefulWidget {
  @override
  _CalculatorMainPageState createState() => _CalculatorMainPageState();
}

class _CalculatorMainPageState extends State<CalculatorMainPage> {
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
            color: Colors.grey[300],
          ),
          Expanded(
            child: Container(
              color: Colors.grey[400],
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 5,
                children: <Widget>[
                  Container(child: Text('Here goes a num')),
                  Container(child: Text('Here goes a num')),
                  Container(child: Text('Here goes a num')),
                  Container(child: Text('Here goes a num')),
                  Container(child: Text('Here goes a num')),
                  Container(child: Text('Here goes a num')),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
