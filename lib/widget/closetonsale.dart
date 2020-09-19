import 'package:coutloot/widget/womentops.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/octicons_icons.dart';

class ClosetOnSale extends StatefulWidget {
  @override
  _ClosetOnSaleState createState() => _ClosetOnSaleState();
}

class _ClosetOnSaleState extends State<ClosetOnSale> {
  Widget _widget(String name, String img, bool _bool) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 53,
                width: 53,
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                    border: _bool
                        ? Border.all(width: 2, color: Color(0xffe74c3c))
                        : Border.all(width: 1, color: Colors.transparent),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(img),
                  backgroundColor: Colors.grey,
                  onBackgroundImageError: (exception, stackTrace) {
                    return Text('');
                  },
                ),
              ),
              Positioned(
                bottom: 5,
                right: 15,
                child: Container(
                  height: 17,
                  width: 17,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _bool ? Color(0xffe74c3c) : Colors.transparent),
                  child: Icon(
                    FontAwesome5.store,
                    size: 8,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(0, 0, 0, 4)),
          )
        ],
      ),
    );
  }

  Widget _widget2(
      String img,
      String name,
      String time,
      String place,
      String upload,
      String nameProduct,
      String productDesc,
      String price,
      String promo) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      height: MediaQuery.of(context).size.height / 1.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  img,
                ),
                backgroundColor: Colors.blueAccent,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.timer,
                          size: 13,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '$time min ago',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 11),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 13,
                        ),
                        Text(
                          place,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(upload), fit: BoxFit.cover)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(nameProduct,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13)),
                    Text(
                      productDesc,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: Colors.grey),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          price,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff00c853).withOpacity(0.2)),
                          child: Text(
                            promo,
                            style: TextStyle(
                                color: Color(0xff00c853),
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffe74c3c)),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Entypo.bag,
                      size: 12,
                      color: Color(0xffe74c3c),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Buy',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffe74c3c),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.sort,
          size: 17,
          color: Color.fromRGBO(0, 0, 0, 0.4),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'Mumbai',
              style:
                  TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4), fontSize: 15),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: 20,
              color: Color.fromRGBO(0, 0, 0, 0.4),
            )
          ],
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Row(
              children: <Widget>[
                Icon(
                  Octicons.bell,
                  size: 15,
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Entypo.bag,
                  size: 15,
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 5,
              color: Colors.grey.withOpacity(0.1),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Closet on sale',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => WomenTops()));
                      },
                      child: Icon(FontAwesome.right,
                          size: 20, color: Colors.grey)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _widget(
                      'Aliyah',
                      'https://images.pexels.com/photos/3657429/pexels-photo-3657429.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      true),
                  _widget(
                      'Dan',
                      'https://images.pexels.com/photos/3214729/pexels-photo-3214729.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      true),
                  _widget(
                      'Madelynn',
                      'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      true),
                  _widget(
                      'Jarred',
                      'https://images.pexels.com/photos/789812/pexels-photo-789812.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      false),
                ],
              ),
            ),
            Container(
              height: 5,
              color: Colors.grey.withOpacity(0.1),
            ),
            _widget2(
                'https://images.pexels.com/photos/4153141/pexels-photo-4153141.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                'Wyman',
                '3',
                'Jakarta',
                'https://images.pexels.com/photos/2922301/pexels-photo-2922301.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                'Sample title will be here',
                'Sample title',
                '\$.5000',
                '30%'),
            _widget2(
                'https://images.pexels.com/photos/4153141/pexels-photo-4153141.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                'Wyman',
                '3',
                'Jakarta',
                'https://images.pexels.com/photos/2922301/pexels-photo-2922301.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                'Sample title will be here',
                'Sample title',
                '\$.5000',
                '30%'),
            _widget2(
                'https://images.pexels.com/photos/4153141/pexels-photo-4153141.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                'Wyman',
                '3',
                'Jakarta',
                'https://images.pexels.com/photos/2922301/pexels-photo-2922301.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                'Sample title will be here',
                'Sample title',
                '\$.5000',
                '30%')
          ],
        ),
      ),
    );
  }
}
