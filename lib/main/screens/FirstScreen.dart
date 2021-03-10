import 'package:flutter/material.dart';
import 'package:gym_e_diary/main/screens/LoginScreen.dart';
import 'package:gym_e_diary/main/screens/SignUP.dart';
import 'package:nb_utils/nb_utils.dart';

import 'Dashboard.dart';

class FirstScreen extends StatefulWidget {
  static String tag = '/FirstScreen';
  static const String routeName = 'firstscreen';

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Gym-E-Diary'),
          backgroundColor: getColorFromHex('#8998FF'),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Image.asset('assets/images/baseLogo.png'),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.black)),
                height: 40,
                minWidth: 20,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginScreen()));
                  toast('Logging in');
                },
                color: getColorFromHex('#8998FF'),
                child: Text(
                  "Login",
                  style: primaryTextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.black)),
                height: 40,
                minWidth: 20,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignUP()));
                  toast('Signing in');
                },
                color: getColorFromHex('#8998FF'),
                child: Text(
                  "Sign Up",
                  style: primaryTextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.black)),
                height: 30,
                minWidth: 10,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Dashboard()));
                  toast('Signing in');
                },
                color: getColorFromHex('#8998FF'),
                child: Text(
                  "Demo Login",
                  style: primaryTextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
