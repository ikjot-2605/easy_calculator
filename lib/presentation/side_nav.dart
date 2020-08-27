
import 'package:easycalculator/presentation/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatelessWidget {
  _launchURL(String url,BuildContext context) async {
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    catch(e){
      final snackBar = SnackBar(
        content: Text('Sorry, something went wrong'),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Easy Calculator',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),

          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(
              builder: (context)=>SettingsPage()
            ))},
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('View Source Code'),
            onTap: ()async{
              await _launchURL('https://github.com/ikjot-2605/easy_calculator',context);
            },
          ),
        ],
      ),
    );
  }
}