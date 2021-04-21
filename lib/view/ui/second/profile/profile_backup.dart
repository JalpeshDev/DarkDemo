import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/material.dart';

class ProfileOnePage extends StatelessWidget {
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
                    colors: [blackBG2Color, blackBG2Color],
                    begin: Alignment.topCenter,
                    end: Alignment.center)),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: _height / 3.5),
                    child: Container(
                      color: primaryGradOneColor,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: TextView(
                        profileText,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: _height / 6.5,
                        left: _width / 20,
                        right: _width / 20),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: blackBG1Color,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: black45Color,
                                        blurRadius: 2.0,
                                        offset: Offset(0.0, 2.0))
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.all(_width / 20),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                        new EdgeInsets.only(top: _height / 35),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        CircleAvatar(
                                          backgroundColor: whiteColor,
                                          radius: _height / 12,
                                          child: CircleAvatar(
                                            backgroundImage: new AssetImage(
                                                'assets/img/image.jpg'),
                                            radius: _height / 13,
                                          ),
                                        ),
                                        SizedBox(
                                          height: _height / 35,
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
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: Icon(Icons.edit_rounded),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: _height / 20),
                          child: Column(
                            children: <Widget>[
                              infoChild(_width, Icons.email, emailExp),
                              SizedBox(
                                height: _height * 0.05,
                              ),
                              infoChild(_width, Icons.call, phoneExp),
                              SizedBox(
                                height: _height * 0.05,
                              ),
                              infoChild(_width, Icons.group_add, addToGrpStr),
                              SizedBox(
                                height: _height * 0.05,
                              ),
                              infoChild(
                                _width,
                                Icons.chat_bubble,
                                showAllCommentStr,
                              ),
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

  Widget infoChild(double width, IconData icon, String data) => Padding(
        padding: EdgeInsets.only(bottom: 8.0),
        child: InkWell(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: width / 25,
              ),
              CircleAvatar(
                backgroundColor: blackBG1Color,
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
