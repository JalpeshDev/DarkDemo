import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
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
    return Container(
      decoration: BoxDecoration(
        gradient: bgGradient,
      ),
      child: Padding(
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
                            .pushReplacementNamed(LoginPageDemo5Tag);
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
                  _customTextField(icon: Icons.person, labelName: fullNameStr),
                  SizedBox(
                    height: 10,
                  ),
                  _customTextField(
                      icon: Icons.phone_android, labelName: phoneCapStr),
                  SizedBox(
                    height: 10,
                  ),
                  _customTextField(icon: Icons.email, labelName: emailStr),
                  SizedBox(
                    height: 10,
                  ),
                  _customTextField(icon: Icons.lock, labelName: passStr),
                  SizedBox(
                    height: 10,
                  ),
                  _customTextField(icon: Icons.lock, labelName: confirmPassStr),
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
              Navigator.of(context).pushReplacementNamed(LoginPageDemo5Tag);
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
            primary: darkRedColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 50),
          child: TextView(
            signUpBTN,
            textColor: whiteColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }

  Widget _customTextField({String labelName, IconData icon}) {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: labelName,
        hoverColor: whiteColor,
        fillColor: primaryGradTwoColor,
        filled: true,
        prefixIcon: Icon(
          icon,
          color: whiteColor,
        ),
        labelStyle: TextStyle(color: whiteColor),
        focusedBorder: OutlineInputBorder(
          borderSide: new BorderSide(color: whiteColor),
        ),
        border: new OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
