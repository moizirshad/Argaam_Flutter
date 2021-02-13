import 'package:Argaam_Flutter/containers/CurvedScreenContainer.dart';
import 'package:Argaam_Flutter/screens/login.dart';
import 'package:Argaam_Flutter/screens/splashscreen.dart';
import 'package:Argaam_Flutter/theme/config.dart';
import 'package:Argaam_Flutter/theme/customtheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      //2
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        title: 'Argaam',
        theme: CustomTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        darkTheme: CustomTheme.darkTheme,
        themeMode: ThemeMode.light, //currentTheme.currentTheme,
        home: login());
  }
}
