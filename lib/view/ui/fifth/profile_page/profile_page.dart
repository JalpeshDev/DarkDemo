import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/cupertino.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          padding: EdgeInsets.only(
            top: dSize.height * 0.1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_outlined),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoginPageDemo5Tag);
                  }),
              _header(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LoginPageDemo5Tag);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: darkRedColor,
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
                      textColor: whiteColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              userDetails(),
              Expanded(child: _listShow()),
            ],
          ),
        ),
      ),
    );
  }

  Widget userDetails() {
    return Column(
      children: [
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

  Widget _listShow() {
    return ListView.separated(
      itemCount: 4,
      separatorBuilder: (context, index) => Divider(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                child: Row(
                  children: [
                    TextView(
                      '27 Oct, 13:10-15:10',
                      textColor: whiteColor,
                    ),
                    VerticalDivider(
                      color: brightRedColor,
                      thickness: 2,
                    ),
                    TextView(
                      'charles lectern',
                      textColor: deepPurpleColor,
                    ),
                  ],
                ),
              ),
              TextView(
                'User Name',
                fontSize: 20,
                textColor: whiteColor,
              ),
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                textDirection: TextDirection.rtl,
                color: brightRedColor,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
