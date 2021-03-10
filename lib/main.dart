import 'package:flutter/material.dart';
import 'package:gym_e_diary/main/screens/Dashboard.dart';
import 'package:gym_e_diary/main/screens/DemoLogin.dart';
import 'package:gym_e_diary/main/screens/LoginScreen.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:gym_e_diary/main/store/AppStore.dart';
import 'main/screens/FirstScreen.dart';
import 'main/screens/SignUP.dart';
import 'main/store/AppStore.dart';
import 'main/utils/AppConstant.dart';

AppStore appStore = AppStore();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  appStore.toggleDarkMode(value: await getBool(isDarkModeOnPref));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localeResolutionCallback: (locale, supportedLocales) =>
          Locale(appStore.selectedLanguage),
      locale: Locale(appStore.selectedLanguage),
      supportedLocales: [Locale('en', '')],
      title: '$mainAppName${!isMobile ? ' ${platformName()}' : ''}',
      routes: {
        Dashboard.routeName: (context) => Dashboard(),
        FirstScreen.routeName: (context) => FirstScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        DemoLogin.routeName: (context) => DemoLogin(),
        SignUP.routeName:(context) => SignUP(),
      },
      home: FirstScreen(),
      builder: scrollBehaviour(),
    );
  }
}
