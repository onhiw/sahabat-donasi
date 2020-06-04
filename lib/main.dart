import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sahabat_donasi/view/page_splash_screen.dart';
import 'package:sahabat_donasi/view/widgets/onboarding_screen.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashScreenPage(),
    routes: <String, WidgetBuilder>{
      '/MyApp': (BuildContext context) => new MyApp()
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Proppins',
        ),
        home: OnboardingScreen(),
    );
  }
}
