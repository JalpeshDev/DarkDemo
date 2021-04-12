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
      backgroundColor: primaryColor,
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
                  Navigator.of(context).pushReplacementNamed(LoginScreenTag);
                },
                style: ElevatedButton.styleFrom(
                  primary: accentColor,
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
                    textColor: primaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            textField('Jhon Carter', fullNameStr, Icons.person),
            SizedBox(
              height: 10,
            ),
            textField('(555)555-1245', mobileNoStr, Icons.phone_android),
            SizedBox(
              height: 10,
            ),
            textField("myemail@email.com", emailStr, Icons.email),
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
            "Jhon carter",
            fontSize: 18,
          ),
          SizedBox(
            height: 15,
          ),
          TextView(
            "myemail@email.com",
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
