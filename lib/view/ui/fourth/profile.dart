import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [loginGradientStart, loginGradientEnd],
                    begin: Alignment.topCenter,
                    end: Alignment.center)),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: new EdgeInsets.only(top: _height / 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                new AssetImage('assets/img/image.jpg'),
                            radius: _height / 10,
                          ),
                          SizedBox(
                            height: _height / 30,
                          ),
                          Text(
                            userNameExp,
                            style: TextStyle(
                                fontSize: 18.0,
                                color: whiteColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _height / 2.2),
                    child: Container(
                      color: white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: _height / 2.6,
                        left: _width / 20,
                        right: _width / 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: snackBarColor,
                              boxShadow: [
                                BoxShadow(
                                    color: black45Color,
                                    blurRadius: 2.0,
                                    offset: Offset(0.0, 2.0))
                              ]),
                          child: Padding(
                            padding: EdgeInsets.all(_width / 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  headerChild(photosStr, 114),
                                  headerChild(followersSmallStr, 1205),
                                  headerChild(followingSmallStr, 360),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: _height / 20),
                          child: Column(
                            children: <Widget>[
                              infoChild(_width, Icons.email, emailExp),
                              infoChild(_width, Icons.call, phoneExp),
                              infoChild(_width, Icons.group_add, addToGrpStr),
                              infoChild(
                                _width,
                                Icons.chat_bubble,
                                showAllCommentStr,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height / 30),
                                child: Container(
                                  width: _width / 3,
                                  height: _height / 20,
                                  decoration: BoxDecoration(
                                      color: loginGradientStart,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(_height / 40)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: black87Color,
                                            blurRadius: 2.0,
                                            offset: Offset(0.0, 1.0))
                                      ]),
                                  child: Center(
                                    child: Text(followMeStr,
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: whiteColor,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headerChild(String header, int value) => Expanded(
          child: Column(
        children: <Widget>[
          Text(
            header,
            style: TextStyle(color: loginGradientEnd),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            '$value',
            style: TextStyle(
                fontSize: 14.0, color: white, fontWeight: FontWeight.bold),
          )
        ],
      ));

  Widget infoChild(double width, IconData icon, String data) => Padding(
        padding: EdgeInsets.only(bottom: 8.0),
        child: InkWell(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: width / 10,
              ),
              Icon(
                icon,
                color: loginGradientEnd,
                size: 36.0,
              ),
              SizedBox(
                width: width / 20,
              ),
              Text(
                data,
                style: TextStyle(color: snackBarColor),
              )
            ],
          ),
          onTap: () {
            print('Info Object selected');
          },
        ),
      );
}
