import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(LoginPageDemo1Tag);
              },
              child: TextView(loginPage1BTN),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(LoginPageDemo2Tag);
              },
              child: TextView(loginPage2BTN),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(LoginPageDemo3Tag);
              },
              child: TextView(loginPage3BTN),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(LoginPageDemo4Tag);
              },
              child: TextView(loginPage4BTN),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(LoginPageDemo5Tag);
              },
              child: TextView(loginPage5BTN),
            ),
          ],
        ),
      ),
    );
  }
}
