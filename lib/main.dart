import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Regular',
        primaryColor: primaryColor,
        accentColor: accentColor,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPageTag,
      routes: routes,
    );
  }
}
