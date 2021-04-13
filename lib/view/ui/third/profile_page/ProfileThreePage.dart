import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/material.dart';

class ProfileThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBgForDemo3Color,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image(image: AssetImage('assets/images/placeholder.jpg')),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: backgroundColorDemo3,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 96.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  TextView(
                                    userNameExp,
                                    textColor: textColorDemo3,
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: TextView(
                                      designationExp,
                                      textColor: textColorDemo3,
                                    ),
                                    subtitle: TextView(
                                      addressExp,
                                      textColor: textColorDemo3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      TextView(
                                        "285",
                                        textColor: textColorDemo3,
                                      ),
                                      TextView(
                                        likeStr,
                                        textColor: textColorDemo3,
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      TextView(
                                        "3025",
                                        textColor: textColorDemo3,
                                      ),
                                      TextView(
                                        commentStr,
                                        textColor: textColorDemo3,
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      TextView(
                                        "650",
                                        textColor: textColorDemo3,
                                      ),
                                      TextView(
                                        favouritesStr,
                                        textColor: textColorDemo3,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage('assets/images/image.jpg'),
                              fit: BoxFit.cover),
                        ),
                        // image: DecorationImage(image: NetworkImage('https://github.com/lohanidamodar/flutter_ui_challenges/blob/master/assets/placeholder.jpg'), fit: BoxFit.cover)),
                        margin: EdgeInsets.only(left: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: backgroundColorDemo3,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: TextView(
                            userInfoStr,
                            textColor: textColorDemo3,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: TextView(
                            emailStr,
                            textColor: textColorDemo3,
                          ),
                          subtitle: TextView(
                            emailExp,
                            textColor: textColorDemo3,
                          ),
                          leading: Icon(
                            Icons.email,
                            color: textColorDemo3,
                          ),
                        ),
                        ListTile(
                          title: TextView(
                            phoneStr,
                            textColor: textColorDemo3,
                          ),
                          subtitle: TextView(
                            phoneExp,
                            textColor: textColorDemo3,
                          ),
                          leading: Icon(
                            Icons.phone,
                            color: textColorDemo3,
                          ),
                        ),
                        ListTile(
                          title: TextView(
                            websiteStr,
                            textColor: textColorDemo3,
                          ),
                          subtitle: TextView(
                            websiteExp,
                            textColor: textColorDemo3,
                          ),
                          leading: Icon(
                            Icons.web,
                            color: textColorDemo3,
                          ),
                        ),
                        ListTile(
                          title: TextView(
                            aboutStr,
                            textColor: textColorDemo3,
                          ),
                          subtitle: TextView(
                            loremIpsum,
                            textColor: textColorDemo3,
                          ),
                          leading: Icon(
                            Icons.person,
                            color: textColorDemo3,
                          ),
                        ),
                        ListTile(
                          title: TextView(
                            joinedStr,
                            textColor: textColorDemo3,
                          ),
                          subtitle: TextView(
                            joinDateExp,
                            textColor: textColorDemo3,
                          ),
                          leading: Icon(
                            Icons.calendar_view_day,
                            color: textColorDemo3,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: transparentColor,
              elevation: 0,
            )
          ],
        ),
      ),
    );
  }
}
