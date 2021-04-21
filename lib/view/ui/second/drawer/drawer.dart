import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        gradient: bgGradientProfile,
      ),
      padding: EdgeInsets.only(top: 30),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      minRadius: 32,
                      backgroundColor: whiteColor,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/image.jpg'),
                        minRadius: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    TextView(
                      userNameExp,
                      fontSize: 15.0,
                      textColor: whiteColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextView(
                      addressExp,
                      fontSize: 12.0,
                      textColor: purplishColor,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Divider(
                    color: purplishColor,
                    height: 10,
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: _height / 20, right: 20, left: 20),
                  child: Column(
                    children: <Widget>[
                      infoChild(_width, Icons.person, profileText, () {
                        Navigator.of(context).pushNamed(ProfilePageDemo2Tag);
                      }),
                      SizedBox(
                        height: _height * 0.025,
                      ),
                      SizedBox(
                        height: _height * 0.025,
                      ),
                      infoChild(
                        _width,
                        Icons.exit_to_app,
                        logOutStr,
                        () {
                          Navigator.of(context).pushNamed(LoginPageDemo2Tag);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget infoChild(double width, IconData icon, String data, Function onTap) =>
      InkWell(
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: submitButtonBackgroundColor,
              child: Icon(
                icon,
                color: Colors.white,
                size: 18.0,
              ),
            ),
            SizedBox(
              width: width / 20,
            ),
            TextView(
              data,
              fontSize: 16,
              textColor: whiteColor,
            )
          ],
        ),
        onTap: onTap,
      );
}
