import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Dark Theme'),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoSwitch(
                  value: Theme.of(context).brightness==Brightness.dark,
                  onChanged: (bool value) {
                    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
                  },
                ),
              ),
            ],
          ),
          Container(
            height: 0.5,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
