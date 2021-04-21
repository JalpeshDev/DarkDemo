import 'package:cached_network_image/cached_network_image.dart';
import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  final String url;
  final String title;

  const EventPage({Key key, this.url, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: dSize.height,
        width: dSize.width,
        decoration: BoxDecoration(
          gradient: bgGradientHome,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(dSize, context),
            Expanded(child: _body(dSize)),
          ],
        ),
      ),
    );
  }

  Widget _header(Size dSize, BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          fit: BoxFit.fill,
          width: 1000.0,
          height: dSize.height * 0.32,
          imageUrl: url,
          placeholder: (context, url) => Center(
            child: SizedBox(
                width: 30, height: 30, child: CircularProgressIndicator()),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 30,
              color: whiteColor,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: IconButton(
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: whiteColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            width: dSize.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(200, 0, 0, 0),
                  Color.fromARGB(0, 0, 0, 0)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: TextView(
                    title,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_today_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          TextView(demoDate)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.timelapse),
                          SizedBox(
                            width: 8,
                          ),
                          TextView(timeDemo),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _body(Size dSize) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                descStr,
                fontSize: 22,
              ),
              SizedBox(
                height: 10,
              ),
              TextView(
                loremIpsum,
                fontSize: 16,
              ),
              SizedBox(
                height: 10,
              ),
              TextView(
                readMoreStr,
                textColor: purplishColor,
                fontSize: 18,
              ),
              SizedBox(
                height: 20,
              ),
              _mapContainer(dSize),
            ],
          ),
          _buyTicButton(dSize),
        ],
      ),
    );
  }

  Widget _mapContainer(Size dSize) {
    return Container(
      height: dSize.height * 0.2,
      width: dSize.width * 0.9,
      decoration: BoxDecoration(
        color: whiteColor,
        image: DecorationImage(
            image: AssetImage('assets/images/map.jpeg'), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
      ),
    );
  }

  Widget _buyTicButton(Size dSize) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(18.0)),
      color: submitButtonBackgroundColor,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
        child: Container(
          height: dSize.height * 0.05,
          width: dSize.width * 0.9,
          child: Center(
            child: TextView(
              buyTickBTN,
              textColor: whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
