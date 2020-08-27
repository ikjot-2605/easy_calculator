import 'package:easycalculator/presentation/calc_main_page.dart';
import 'package:easycalculator/presentation/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  addNameToSF(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_name', name);
  }
  Future<String> getNameValueSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String stringValue = prefs.getString('user_name');
    return stringValue;
  }
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => new ThemeData(
          primarySwatch: Colors.indigo,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return new MaterialApp(
            title: 'Calculator Application',
            theme: theme,
            home: FutureBuilder(
                future: getNameValueSF(),
              builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                else if(snapshot.hasData){
                  return CalculatorMainPage(name: snapshot.data,);
                }
                else{
                  return IntroPage();
                }
              },
            ),
          );
        }
    );
  }
}
