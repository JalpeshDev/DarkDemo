import 'package:dark_app_demo/view/ui/fifth/login_page/login_page.dart'
    as fifth;
import 'package:dark_app_demo/view/ui/fifth/profile_page/profile_page.dart'
    as fifth;
import 'package:dark_app_demo/view/ui/fifth/register_page/register_page.dart'
    as fifth;
import 'package:dark_app_demo/view/ui/first/login_page/login_page.dart';
import 'package:dark_app_demo/view/ui/first/profile_page/profile_page.dart';
import 'package:dark_app_demo/view/ui/first/register_page/register_page.dart';
import 'package:dark_app_demo/view/ui/fourth/login_page.dart' as fourth;
import 'package:dark_app_demo/view/ui/fourth/profile.dart' as fourth;
import 'package:dark_app_demo/view/ui/main_home_page/main_home_page.dart';
import 'package:dark_app_demo/view/ui/second/eventpage/event_page.dart'
    as second;
import 'package:dark_app_demo/view/ui/second/homepage/home_page.dart' as second;
import 'package:dark_app_demo/view/ui/second/homepage/home_page_diffNav.dart'
    as second;
import 'package:dark_app_demo/view/ui/second/loginPage/loginPage.dart'
    as second;
import 'package:dark_app_demo/view/ui/second/profile/profile1.dart';
import 'package:dark_app_demo/view/ui/second/signup/signup.dart';
import 'package:dark_app_demo/view/ui/third/profile_page/ProfileThreePage.dart';
import 'package:dark_app_demo/view/ui/third/signin_page/signin.dart' as third;
import 'package:dark_app_demo/view/ui/third/signup_page/signup.dart' as third;
import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  // initial route
  RegisterPageDemo1Tag: (BuildContext context) => RegisterPage(),
  ProfilePageDemo1Tag: (BuildContext context) => ProfilePage(),
  LoginPageDemo1Tag: (BuildContext context) => LoginPage(),
  RegisterPageDemo5Tag: (BuildContext context) => fifth.RegisterPage(),
  ProfilePageDemo5Tag: (BuildContext context) => fifth.ProfilePage(),
  LoginPageDemo5Tag: (BuildContext context) => fifth.LoginPage(),
  RegisterPageDemo2Tag: (BuildContext context) => SignUpPage(),
  ProfilePageDemo2Tag: (BuildContext context) => ProfileOnePage(),
  LoginPageDemo2Tag: (BuildContext context) => second.LoginPage(),
  HomePageDemo2Tag: (BuildContext context) => second.HomePage(),
  HomePageNewDemo2Tag: (BuildContext context) => second.HomePageNew(),
  EventPageDemo2Tag: (BuildContext context) => second.EventPage(),
  RegisterPageDemo3Tag: (BuildContext context) => third.SignUpScreen(),
  ProfilePageDemo3Tag: (BuildContext context) => ProfileThreePage(),
  LoginPageDemo3Tag: (BuildContext context) => third.SignInPage(),
  LoginPageDemo4Tag: (BuildContext context) => fourth.LoginPage(),
  ProfilePageDemo4Tag: (BuildContext context) => fourth.ProfilePage(),
  MainHomePageTag: (BuildContext context) => MainHomePage(),
};
