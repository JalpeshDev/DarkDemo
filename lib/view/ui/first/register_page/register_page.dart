import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:dark_app_demo/view/utils/widgets/textFormFieldsForDemo1.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          top: dSize.height * 0.1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back_rounded),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(LoginPageDemo1Tag);
                    }),
                TextView(
                  createAccount,
                  fontSize: 28,
                ),
                SizedBox(
                  height: 15,
                ),
                TextView(
                  createAccountHint,
                  fontSize: 18,
                  textColor: greyColor,
                ),
                SizedBox(
                  height: 15,
                ),
                customTextFormField(icon: Icons.person, labelName: fullNameStr),
                SizedBox(
                  height: 10,
                ),
                customTextFormField(
                    icon: Icons.phone_android, labelName: phoneCapStr),
                SizedBox(
                  height: 10,
                ),
                customTextFormField(icon: Icons.email, labelName: emailStr),
                SizedBox(
                  height: 10,
                ),
                customTextFormField(icon: Icons.lock, labelName: passStr),
                SizedBox(
                  height: 10,
                ),
                customTextFormField(
                    icon: Icons.lock, labelName: confirmPassStr),
                SizedBox(
                  height: 60,
                ),
                signUpBtn(),
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
          alreadyAccount,
          textColor: greyColor,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(LoginPageDemo1Tag);
            },
            child: TextView(
              signInBTN,
              textColor: whiteColor,
            )),
      ],
    );
  }

  Widget signUpBtn() {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: accentColorDemo1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 50),
          child: TextView(
            signUpBTN,
            textColor: primaryColorDemo1,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
