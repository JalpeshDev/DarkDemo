import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/material.dart';

class ProfileOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text(viewProfileStr),
        backgroundColor: primaryGradOneColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: bgGradientProfile,
        ),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1, 0.9],
                      colors: [primaryGradOneColor, blackBGColor])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(
                          Icons.call,
                          size: 30.0,
                          color: darkRedColor,
                        ),
                        minRadius: 30.0,
                        backgroundColor: buttonBackgroundColor,
                      ),
                      CircleAvatar(
                        minRadius: 60,
                        backgroundColor: whiteColor,
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('assets/images/image.jpg'),
                          minRadius: 50,
                        ),
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.message,
                          size: 30.0,
                          color: darkRedColor,
                        ),
                        minRadius: 30.0,
                        backgroundColor: buttonBackgroundColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextView(
                    userNameExp,
                    fontSize: 18.0,
                    textColor: whiteColor,
                  ),
                  TextView(
                    addressExp,
                    fontSize: 14.0,
                    textColor: purplishColor,
                  )
                ],
              ),
            ),
            Container(
              // height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: primaryGradOneColor,
                      child: ListTile(
                        title: TextView(
                          "50895",
                          textAlign: TextAlign.center,
                          textColor: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        subtitle: TextView(
                          followersStr,
                          textAlign: TextAlign.center,
                          textColor: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: primaryGradOneColor,
                      child: ListTile(
                        title: TextView(
                          "34524",
                          textAlign: TextAlign.center,
                          textColor: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        subtitle: TextView(
                          followingStr,
                          textAlign: TextAlign.center,
                          textColor: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [primaryGradOneColor, blackBGColor])),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      emailIdStr,
                      textColor: whiteColor,
                      fontSize: 16.0,
                    ),
                    TextView(
                      emailExp,
                      fontSize: 14,
                      textColor: whiteColor,
                    ),
                    Divider(
                      color: brightRedColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextView(
                      phoneStr,
                      textColor: whiteColor,
                      fontSize: 16.0,
                    ),
                    TextView(
                      phoneExp,
                      fontSize: 14.0,
                      textColor: whiteColor,
                    ),
                    Divider(
                      color: brightRedColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextView(
                      twitterStr,
                      textColor: whiteColor,
                      fontSize: 14.0,
                    ),
                    TextView(
                      twitterExp,
                      fontSize: 16.0,
                      textColor: whiteColor,
                    ),
                    Divider(
                      color: brightRedColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextView(
                      facebookStr,
                      textColor: whiteColor,
                      fontSize: 14.0,
                    ),
                    TextView(
                      facebookExp,
                      fontSize: 16.0,
                      textColor: whiteColor,
                    ),
                    Divider(
                      color: brightRedColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
