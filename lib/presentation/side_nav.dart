
import 'package:easycalculator/presentation/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'get_name.dart';

class NavDrawer extends StatefulWidget {
  final String name;

  const NavDrawer({Key key, this.name}) : super(key: key);
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
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
              'Welcome ${widget.name}',
              style: TextStyle(fontSize: 25),
            ),

          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: Text('Change Name'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>GetName()
              ))
            },
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