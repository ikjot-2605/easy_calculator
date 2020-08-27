import 'package:easycalculator/presentation/calc_main_page.dart';
import 'package:easycalculator/presentation/get_name.dart';
import 'package:flutter/material.dart';
class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState(){
    Future.delayed(const Duration(seconds: 4), () {Navigator.push(context,MaterialPageRoute(
        builder: (context)=>GetName()
    ));});

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1272E9),
      body: Center(
        child: Image.asset('assets/welcome.gif'),
      ),
    );
  }
}
