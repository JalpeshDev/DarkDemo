import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _toggleSwitch = false;

  void _toggle(bool toggle) {
    setState(() {
      _toggleSwitch = !_toggleSwitch;
    });
  }

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
              child: Icon(Icons.keyboard_arrow_left, color: whiteColor),
            ),
            TextView(
              backStr,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, IconData icon, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
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

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: submitButtonBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(
        'Register Now',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, LoginPageDemo2Tag);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextView(
              alreadyAccount,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              textColor: whiteColor,
            ),
            SizedBox(
              width: 10,
            ),
            TextView(
              loginStr,
              textColor: brightRedColor,
              fontSize: 18,
              fontWeight: FontWeight.w900,
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
          text: registerRichText1,
          style: TextStyle(
              color: brightRedColor, fontSize: 45, fontFamily: 'ZenDots'),
          children: [
            TextSpan(
              text: registerRichText2,
              style: TextStyle(
                  color: Colors.white70, fontSize: 45, fontFamily: 'ZenDots'),
            ),
            TextSpan(
              text: registerRichText3,
              style: TextStyle(
                  color: brightRedColor, fontSize: 45, fontFamily: 'ZenDots'),
            ),
          ]),
    );
  }

  Widget _termsTitle() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: termsRichText1,
          style: TextStyle(color: white, fontSize: 12, fontFamily: 'ZenDots'),
          children: [
            TextSpan(
              text: termsRichText2,
              style: TextStyle(
                color: brightRedColor,
                fontSize: 14,
                fontFamily: 'ZenDots',
              ),
            ),
            TextSpan(
              text: termsRichText3,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'ZenDots',
              ),
            ),
            TextSpan(
              text: termsRichText4,
              style: TextStyle(
                color: brightRedColor,
                fontSize: 14,
                fontFamily: 'ZenDots',
              ),
            ),
          ]),
    );
  }

  Widget _imageButton(double _height) {
    return Container(
      height: _height / 6,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 0.0,
              color: demoScreen2FillColor,
              offset: Offset(1.0, 10.0),
              blurRadius: 20.0),
        ],
        color: whiteColor,
        shape: BoxShape.circle,
      ),
      child: GestureDetector(
          onTap: () {
            print('Adding photo');
          },
          child: Icon(
            Icons.add_a_photo,
            size: 35,
            color: brightRedColor,
          )),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField(firstNameStr, Icons.person_rounded),
        _entryField(lastNameStr, Icons.person_outline_outlined),
        _entryField(emailIdStr, Icons.email_rounded),
        _entryField(mobileNoStr, Icons.phone_android),
        _entryField(passStr, Icons.lock_rounded, isPassword: true),
      ],
    );
  }

  Widget _termsAndCondition() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Checkbox(
          value: _toggleSwitch,
          onChanged: _toggle,
          activeColor: brightRedColor,
        ),
        Expanded(child: _termsTitle()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: bgGradient,
        ),
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .08),
                    _title(),
                    SizedBox(
                      height: height * .02,
                    ),
                    _imageButton(height),
                    _emailPasswordWidget(),
                    SizedBox(
                      height: height * .02,
                    ),
                    _termsAndCondition(),
                    SizedBox(
                      height: height * .04,
                    ),
                    _submitButton(),
                    SizedBox(height: height * .02),
                    _loginAccountLabel(),
                  ],
                ),
              ),
            ),
            Positioned(top: height * .04, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
