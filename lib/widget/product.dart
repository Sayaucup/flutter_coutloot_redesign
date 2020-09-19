import 'package:coutloot/widget/womentops.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Widget _widget(Function ontap, String img, String name, String categories,
      String price, String discount) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width / 2.7,
        height: MediaQuery.of(context).size.height / 3.1,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 7, left: 5, right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  image: DecorationImage(
                      image: NetworkImage(img), fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 5),
              child: Text(
                name,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 5),
              child: Text(
                categories,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5, left: 5),
                  child: Text(
                    price,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, right: 5),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  decoration: BoxDecoration(
                      color: Color(0xff00c853).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
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
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 245,
        color: Color(0xffeff1f4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Promoted',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Icon(
                    FontAwesome.right,
                    size: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  _widget(
                      () {},
                      'https://images.pexels.com/photos/3542148/pexels-photo-3542148.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      'Women Wearing black leather jacket',
                      'leather jacket',
                      '\$5',
                      '50%off'),
                  SizedBox(
                    width: 15,
                  ),
                  _widget(
                      () {},
                      'https://images.pexels.com/photos/3542148/pexels-photo-3542148.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      'Women Wearing black leather jacket',
                      'leather jacket',
                      '\$5',
                      '50%off'),
                  SizedBox(
                    width: 15,
                  ),
                  _widget(
                      () {},
                      'https://images.pexels.com/photos/3542148/pexels-photo-3542148.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      'Women Wearing black leather jacket',
                      'leather jacket',
                      '\$5',
                      '50%off'),
                  SizedBox(
                    width: 15,
                  ),
                  _widget(
                      () {},
                      'https://images.pexels.com/photos/3542148/pexels-photo-3542148.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      'Women Wearing black leather jacket',
                      'leather jacket',
                      '\$5',
                      '50%off'),
                  SizedBox(
                    width: 15,
                  ),
                  _widget(
                      () {},
                      'https://images.pexels.com/photos/3542148/pexels-photo-3542148.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      'Women Wearing black leather jacket',
                      'leather jacket',
                      '\$5',
                      '50%off'),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
