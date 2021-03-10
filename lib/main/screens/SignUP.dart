import 'package:flutter/material.dart';
import 'package:gym_e_diary/main/screens/Dashboard.dart';
import 'package:nb_utils/nb_utils.dart';

class SignUP extends StatefulWidget {
  static String tag = '/SignUP';
  static const String routeName = 'signup';

  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
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
          title: Text('Gym-E-Diary'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        //  labelText: 'Master Contact',
                        hintText: 'Master Contact',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: getColorFromHex('#8998FF'),
                      child: Text('Get OTP'),
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => Dashboard()));
                        toast('Requesting OTP');
                      },
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        // labelText: 'User Name',
                        hintText: 'Enter OTP',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        //    labelText: 'User Name',
                        hintText: 'Gym Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        // labelText: 'User Name',
                        hintText: 'Gym Email',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        //  labelText: 'User Name',
                        hintText: 'Gym Addresss',
                      ),
                    ),
                  ),

                  RaisedButton(
                    textColor: Colors.white,
                    color: getColorFromHex('#8998FF'),
                    child: Text('Create Account'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Dashboard()));
                      toast('Creating Account');
                    },
                  )
                ],
              )),
        ));
  }
}
