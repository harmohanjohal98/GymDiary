import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class DemoLogin extends StatefulWidget {
  static String tag = '/DemoLogin';
  static const String routeName = 'demologin';

  @override
  _DemoLoginState createState() => _DemoLoginState();
}

class _DemoLoginState extends State<DemoLogin> {
  @override
  void initState() {
    super.initState();
  }

  init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: getColorFromHex('#8998FF'),
          title: Text('Gym-E-Diary(Demo)'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '9876623456',
                      // hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'aaaa1111',
                      //   hintText: 'Enter Password',
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  textColor: Colors.white,
                  color: getColorFromHex('#8998FF'),
                  child: Text('Sign In'),
                  onPressed: () {},
                )
              ],
            )));
  }
}
