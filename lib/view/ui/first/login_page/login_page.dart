import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:dark_app_demo/view/utils/widgets/textFormFieldsForDemo1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColorDemo1,
      body: _body(dSize),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _body(Size dSize) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        padding: EdgeInsets.only(
          top: dSize.height * 0.2,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/login-bg.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                TextView(
                  loginStr,
                  fontSize: 28,
                ),
                SizedBox(
                  height: 15,
                ),
                TextView(
                  loginHint,
                  fontSize: 18,
                  textColor: greyColor,
                ),
                SizedBox(
                  height: 15,
                ),
                customTextFormField(icon: Icons.email, labelName: emailStr),
                SizedBox(
                  height: 10,
                ),
                customTextFormField(icon: Icons.lock, labelName: passStr),
                SizedBox(
                  height: 25,
                ),
                loginBtn(),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: TextView(
                  forgotpass,
                  textColor: greyColor,
                )),
              ],
            ),
            footer(),
          ],
        ),
      ),
    );
  }

  Widget footer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextView(
          signUpHint,
          textColor: greyColor,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(RegisterPageDemo1Tag);
            },
            child: TextView(
              signUpBTN,
              textColor: whiteColor,
            )),
      ],
    );
  }

  Widget loginBtn() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(ProfilePageDemo1Tag);
        },
        style: ElevatedButton.styleFrom(
            primary: accentColorDemo1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 50),
          child: TextView(
            loginBTN,
            textColor: primaryColorDemo1,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
