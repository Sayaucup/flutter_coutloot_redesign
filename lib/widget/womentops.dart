import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class WomenTops extends StatefulWidget {
  @override
  _WomenTopsState createState() => _WomenTopsState();
}

class _WomenTopsState extends State<WomenTops> {
  Widget _widget(String img, String name, String categories, String price,
      String discount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
        Text(
          categories,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, 0.6),
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              price,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff00c853).withOpacity(0.2)),
              child: Text(
                discount,
                style: TextStyle(
                    color: Color(0xff00c853),
                    fontSize: 11,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              FontAwesome.left,
              color: Color.fromRGBO(0, 0, 0, 0.6),
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Women Tops',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Color.fromRGBO(0, 0, 0, 0.6),
          ),
        ),
        actions: <Widget>[
          Icon(
            Entypo.bag,
            color: Color.fromRGBO(0, 0, 0, 0.6),
            size: 15,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.more_vert,
            color: Color.fromRGBO(0, 0, 0, 0.6),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 3,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.35,
            margin: EdgeInsets.all(20),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              shrinkWrap: true,
              childAspectRatio: 1 / 1.4,
              children: <Widget>[
                _widget(
                    'https://images.pexels.com/photos/4654356/pexels-photo-4654356.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    'Russell',
                    'categories',
                    '\$.20',
                    '50%off'),
                _widget(
                    'https://images.pexels.com/photos/4654356/pexels-photo-4654356.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    'Blaise',
                    'categories',
                    '\$.20',
                    '50%off'),
                _widget(
                    'https://images.pexels.com/photos/4654356/pexels-photo-4654356.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    'Velda',
                    'categories',
                    '\$.20',
                    '50%off'),
                _widget(
                    'https://images.pexels.com/photos/4654356/pexels-photo-4654356.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    'Annie',
                    'categories',
                    '\$.20',
                    '50%off'),
                _widget(
                    'https://images.pexels.com/photos/4654356/pexels-photo-4654356.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    'Vidal',
                    'categories',
                    '\$.20',
                    '50%off'),
                _widget(
                    'https://images.pexels.com/photos/4654356/pexels-photo-4654356.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    'Jan',
                    'categories',
                    '\$.20',
                    '50%off'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.ac_unit,
                  color: Colors.grey,
                  size: 15,
                ),
                Icon(
                  Icons.ac_unit,
                  color: Colors.grey,
                  size: 15,
                ),
                Icon(
                  Icons.ac_unit,
                  color: Colors.grey,
                  size: 15,
                ),
                Icon(
                  Icons.ac_unit,
                  color: Colors.grey,
                  size: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
