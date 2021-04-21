import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: whiteColor,
              ),
            ),
            TextView(
              backStr,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, IconData icon, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: whiteColor,
          ),
          labelText: title,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          fillColor: demoScreen2FillColor,
          filled: true,
        ),
      ),
    );
  }

  Widget _submitButton(bool first) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
            context, first ? HomePageNewDemo2Tag : HomePageDemo2Tag);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: submitButtonBackgroundColor,
        ),
        child: TextView(
          loginBTN,
          // first ? loginBTN + ' screen 2' : loginBTN + ' screen 1',
          fontSize: 20,
          textColor: whiteColor,
        ),
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RegisterPageDemo2Tag);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextView(
              signUpHint,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              textColor: whiteColor,
            ),
            SizedBox(
              width: 10,
            ),
            TextView(
              registerStr,
              textColor: brightRedColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: loginRichText1,
          style: TextStyle(
              color: brightRedColor, fontSize: 45, fontFamily: 'ZenDots'),
          children: [
            TextSpan(
              text: loginRichText2,
              style: TextStyle(
                  color: Colors.white70, fontSize: 45, fontFamily: 'ZenDots'),
            ),
            TextSpan(
              text: loginRichText3,
              style: TextStyle(
                  color: brightRedColor, fontSize: 45, fontFamily: 'ZenDots'),
            ),
          ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField(emailIdStr, Icons.email_rounded),
        _entryField(passStr, Icons.lock_rounded, isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        decoration: BoxDecoration(
          gradient: bgGradient,
        ),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    _title(),
                    SizedBox(height: height * .11),
                    _emailPasswordWidget(),
                    SizedBox(height: height * .02),
                    _submitButton(false),
                    // SizedBox(height: 10),
                    // _submitButton(true),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerRight,
                      child: Text(forgotpass,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: height * 0.14),
                    _createAccountLabel(),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
