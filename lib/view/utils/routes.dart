import 'package:dark_app_demo/view/ui/login_page/login_page.dart';
import 'package:dark_app_demo/view/ui/profile_page/profile_page.dart';
import 'package:dark_app_demo/view/ui/register_page/register_page.dart';
import 'package:dark_app_demo/view/ui/second/loginPage/loginPage.dart';
import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  // initial route
  LoginScreenTag: (BuildContext context) => LoginScreen(),
  RegisterPageTag: (BuildContext context) => RegisterPage(),
  ProfilePageTag: (BuildContext context) => ProfilePage(),
  LoginPageTag: (BuildContext context) => LoginPage(),
};
