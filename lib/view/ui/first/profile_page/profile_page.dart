import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: EdgeInsets.only(
          top: dSize.height * 0.1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(LoginPageDemo1Tag);
                },
                style: ElevatedButton.styleFrom(
                  primary: accentColorDemo1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 45),
                  child: TextView(
                    backToHomeBTN,
                    textColor: primaryColorDemo1,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            textField(userNameExp, fullNameStr, Icons.person),
            SizedBox(
              height: 10,
            ),
            textField(phoneExp, phoneCapStr, Icons.phone_android),
            SizedBox(
              height: 10,
            ),
            textField(emailExp, emailStr, Icons.email),
          ],
        ),
      ),
    );
  }

  TextFormField textField(String initialName, String labelName, IconData icon) {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      enabled: false,
      initialValue: initialName,
      decoration: InputDecoration(
        labelText: labelName,
        hoverColor: whiteColor,
        labelStyle: TextStyle(color: whiteColor),
        prefixIcon: Icon(
          icon,
          color: whiteColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: new BorderSide(color: whiteColor),
        ),
        border: new OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _header() {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/image.jpg'),
            radius: 60,
          ),
          SizedBox(
            height: 15,
          ),
          TextView(
            userNameExp,
            fontSize: 18,
          ),
          SizedBox(
            height: 15,
          ),
          TextView(
            emailExp,
            fontSize: 18,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
