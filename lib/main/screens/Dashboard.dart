import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../main.dart';

class Dashboard extends StatefulWidget {
  static String tag = '/Dashboard';
  static const String routeName = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(Duration(seconds: 1));
    scaffoldKey.currentState.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: getColorFromHex('#8998FF'),
        title: Text('Dashboard',
            style: TextStyle(color: Colors.white, fontSize: 22)),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState.openDrawer();
          },
        ),
      ),
      drawer: ClipPath(
        clipper: OvalRightBorderClipper(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Drawer(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 40),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            width: 300,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.close_rounded,
                          color: appStore.textPrimaryColor,
                        ),
                        onPressed: () {
                          scaffoldKey.currentState.openEndDrawer();
                        },
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.orange),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTD8u1Nmrk78DSX0v2i_wTgS6tW5yvHSD7o6g&usqp=CAU')),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "John Dow",
                      style: TextStyle(
                          color: appStore.textPrimaryColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("JohnDoe@gmail.com",
                        style: TextStyle(
                            color: appStore.textPrimaryColor, fontSize: 16.0)),
                    30.height,
                    itemList(Icon(Icons.dashboard, color: appStore.iconColor),
                        "Dashboard"),
                    Divider(),
                    15.height,
                    itemList(Icon(Icons.person_add, color: appStore.iconColor),
                        "New Member"),
                    Divider(),
                    15.height,
                    itemList(Icon(Icons.message, color: appStore.iconColor),
                        "Reports"),
                    Divider(),
                    15.height,
                    itemList(
                        Icon(Icons.add_box_outlined, color: appStore.iconColor),
                        "Tools"),
                    Divider(),
                    15.height,
                    itemList(Icon(Icons.settings, color: appStore.iconColor),
                        "Master"),
                    Divider(),
                    // 90.height,
                    // Image.asset('assets/images/baseLogo.png',alignment: Alignment.bottomCenter,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget itemList(Widget icon, String title) {
    return Row(
      children: [
        icon,
        10.width,
        Text(title, style: TextStyle(color: appStore.textPrimaryColor)),
      ],
    ).onTap(() {
      scaffoldKey.currentState.openEndDrawer();
      toast(title);
    });
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 50, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
