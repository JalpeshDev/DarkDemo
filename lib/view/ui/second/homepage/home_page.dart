import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dark_app_demo/view/ui/second/eventpage/event_page.dart';
import 'package:dark_app_demo/view/utils/constants.dart';
import 'package:dark_app_demo/view/utils/text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // 4 is for Floating action button
  int _selectedIndex = 4;
  int _eventIndex = 0;

  AnimationController _animationController;
  Animation<double> animation;
  CurvedAnimation curve;

  List<String> _titleList = [
    'Music Festival',
    'Movie Festival',
    'Sports Festival',
  ];

  final iconList = <IconData>[
    Icons.home,
    Icons.explore,
    Icons.chat_bubble_outlined,
    Icons.settings,
  ];

  @override
  void initState() {
    super.initState();
    final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: primaryGradOneColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
      () => _animationController.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EventPage(
                        url: item,
                        title: 'Event No. ${imgList.indexOf(item) + 1}',
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      child: Stack(
                        children: <Widget>[
                          CachedNetworkImage(
                            fit: BoxFit.fill,
                            width: 1000.0,
                            height: 800,
                            imageUrl: item,
                            placeholder: (context, url) => Center(
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: CircularProgressIndicator()),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                'Title:- Event No. ${imgList.indexOf(item) + 1}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ))
        .toList();

    final dSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: TextView('HomePage'),
        backgroundColor: blackBGColor,
      ),
      backgroundColor: primaryGradOneColor,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: dSize.height,
        decoration: BoxDecoration(
          gradient: bgGradientHome,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _searchContainer(dSize),
            Flexible(flex: 1, child: _eventList(dSize)),
            SizedBox(),
            _eventTitle(),
            Flexible(flex: 8, child: _eventCarousal(dSize, imageSliders)),
            SizedBox(),
            // _newNavBar(),
          ],
        ),
      ),
      // drawer: Drawer(
      //   child: CustomDrawer(),
      // ),
      // floatingActionButton: _floatingActionButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: _newNavBar(),
    );
  }

  Widget _floatingActionButton() {
    return ScaleTransition(
      scale: animation,
      child: FloatingActionButton(
        elevation: 8,
        backgroundColor:
            _selectedIndex == 4 ? purplishColor : submitButtonBackgroundColor,
        onPressed: () {
          setState(() {
            _selectedIndex = 4;
          });
        },
        child: Icon(Icons.calculate),
        //params
      ),
    );
  }

  Widget _eventTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextView(
          _titleList[_eventIndex],
          fontSize: 22,
          textColor: whiteColor,
        ),
        InkWell(
          onTap: () {},
          child: TextView(
            seeAllStr,
            fontWeight: FontWeight.bold,
            textColor: greyColor,
          ),
        ),
      ],
    );
  }

  Widget _eventList(Size dSize) {
    return ListView.builder(
      itemCount: _titleList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          setState(() {
            _eventIndex = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(
            left: index == 0 ? 40 : 10,
            top: 10,
            right: index == _titleList.length - 1 ? 30 : 0,
            bottom: 10,
          ),
          width: dSize.width * 0.5,
          decoration: BoxDecoration(
            color: _eventIndex == index
                ? purplishColor
                : submitButtonBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          child: Center(
            child: TextView(
              _titleList[index],
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget _searchContainer(Size dSize) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: dSize.width * 0.9,
      decoration: BoxDecoration(
        color: submitButtonBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: whiteColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.art_track_rounded,
              color: whiteColor,
            ),
            onPressed: () {},
          ),
          hintText: searchStr,
          hintStyle: TextStyle(color: whiteColor, fontSize: 20),
        ),
        style: TextStyle(color: whiteColor, fontSize: 20),
      ),
    );
  }

  Widget _eventCarousal(Size size, List imageSliders) {
    return CarouselSlider(
      options: CarouselOptions(
          aspectRatio: 1.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false),
      items: imageSliders,
    );
  }

  Widget _newNavBar() {
    return AnimatedBottomNavigationBar(
      icons: iconList,
      activeIndex: _selectedIndex,
      gapLocation: GapLocation.center,
      backgroundColor: blackBGColor,
      activeColor: purplishColor,
      notchAndCornersAnimation: animation,
      splashSpeedInMilliseconds: 300,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      height: 60,
      onTap: (index) => setState(() => _selectedIndex = index),
      //other params
    );
  }
}
