import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

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
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        minRadius: 60,
                        backgroundColor: whiteColor,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image.jpg'),
                          minRadius: 50,
                        ),
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
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // height: 50,
                    child: IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: submitButtonBackgroundColor,
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
                          VerticalDivider(
                            color: purplishColor,
                            width: 2,
                            thickness: 2,
                          ),
                          Expanded(
                            child: Container(
                              color: submitButtonBackgroundColor,
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
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: _height / 20, right: 20, left: 20),
                    child: Column(
                      children: <Widget>[
                        infoChild(_width, Icons.email, emailExp),
                        SizedBox(
                          height: _height * 0.025,
                        ),
                        Divider(
                          color: purplishColor,
                          height: 2,
                        ),
                        SizedBox(
                          height: _height * 0.025,
                        ),
                        infoChild(_width, Icons.call, phoneExp),
                        SizedBox(
                          height: _height * 0.025,
                        ),
                        Divider(
                          color: purplishColor,
                          height: 2,
                        ),
                        SizedBox(
                          height: _height * 0.025,
                        ),
                        infoChild(_width, Icons.group_add, addToGrpStr),
                        SizedBox(
                          height: _height * 0.025,
                        ),
                        Divider(
                          color: purplishColor,
                          height: 2,
                        ),
                        SizedBox(
                          height: _height * 0.025,
                        ),
                        infoChild(
                          _width,
                          Icons.chat_bubble,
                          showAllCommentStr,
                        ),
                        SizedBox(
                          height: _height * 0.025,
                        ),
                        Divider(
                          color: purplishColor,
                          height: 2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoChild(double width, IconData icon, String data) => Padding(
        padding: EdgeInsets.only(bottom: 8.0),
        child: InkWell(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: width / 25,
              ),
              CircleAvatar(
                backgroundColor: submitButtonBackgroundColor,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              SizedBox(
                width: width / 15,
              ),
              TextView(
                data,
                fontSize: 16,
                textColor: whiteColor,
              )
            ],
          ),
          onTap: () {
            print('Info Object selected');
          },
        ),
      );
}
