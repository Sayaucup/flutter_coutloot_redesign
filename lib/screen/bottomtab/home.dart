import 'package:coutloot/screen/search.dart';
import 'package:coutloot/widget/closetonsale.dart';
import 'package:coutloot/widget/recentclosetonsale.dart';
import 'package:coutloot/widget/explorecategories.dart';
import 'package:coutloot/widget/silder.dart';
import 'package:coutloot/widget/swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/octicons_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool more = false;
  Widget _widget(String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 53,
          width: 53,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xffeff1f4)),
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 0, 0, 0.4)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //app bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) => Search()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: MediaQuery.of(context).size.width / 1.4,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xffeff1f4),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.sort,
                                size: 17, color: Color.fromRGBO(0, 0, 0, 0.6)),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Search anything',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                ),
                              ),
                            ),
                            Icon(
                              Octicons.heart_outline,
                              size: 15,
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Octicons.bell,
                        size: 15,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                    Icon(
                      Entypo.bag,
                      size: 15,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                    ),
                  ],
                ),
              ),
              //slider
              Sliderr(),
              Container(
                height: 3.5,
                color: Color(0xffeff1f4),
              ),
              //explore categories
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Explore Categories',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          more = !more;
                        });
                      },
                      child: more
                          ? Icon(
                              FontAwesome.cancel,
                              size: 20,
                              color: Colors.red,
                            )
                          : Icon(
                              FontAwesome.right,
                              size: 20,
                              color: Color(0xff1693C6),
                            ),
                    )
                  ],
                ),
              ),
              //categories
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ExploreCategories(),
                  more
                      ? Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Wrap(
                                children: <Widget>[
                                  _widget('Lorem6'),
                                  _widget('Lorem7'),
                                  _widget('Lorem8'),
                                  _widget('Lorem9'),
                                  _widget('Lorem10'),
                                  _widget('Lorem11'),
                                  _widget('Lorem12'),
                                  _widget('Lorem13'),
                                ],
                              ),
                            ),
                          ],
                        )
                      : SizedBox.shrink()
                ],
              ),
              Container(
                height: 3.5,
                color: Color(0xffeff1f4),
              ),
              //closet on sale
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Closet on sale',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => ClosetOnSale()));
                      },
                      child: Icon(
                        FontAwesome.right,
                        size: 20,
                        color: Color(0xff1693C6),
                      ),
                    ),
                  ],
                ),
              ),
              RecentClosetonsale(),
              Swipe()
            ],
          ),
        ),
      ),
    );
  }
}
