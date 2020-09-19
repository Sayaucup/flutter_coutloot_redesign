import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class Swipe extends StatefulWidget {
  @override
  _SwipeState createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {
  Widget _swiper(String img) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Color(0xff76848b)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          img,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 100,
      color: Color(0xffeff1f4),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                print('object');
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 6,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        FontAwesome.left,
                        size: 15,
                        color: Color(0xff76848b),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Swipe',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff76848b),
                      ),
                    )
                  ],
                ),
              ),
            ),
            _swiper(
                'https://img.freepik.com/free-vector/abstract-flash-sale-promotion-banner_23-2148339478.jpg?size=338&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
            _swiper(
                'https://img.freepik.com/free-vector/painted-banner-black-friday_21799-4035.jpg?size=338&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
            _swiper(
                'https://img.freepik.com/free-vector/painted-banner-black-friday_21799-4041.jpg?size=338&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
            _swiper(
                'https://img.freepik.com/free-vector/colorful-big-sale-composition-with-flat-design_23-2147968296.jpg?size=338&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
            _swiper(
                'https://img.freepik.com/free-vector/colorful-big-sale-composition-with-flat-design_23-2147968296.jpg?size=338&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
            _swiper(
                'https://img.freepik.com/free-vector/colorful-big-sale-composition-with-flat-design_23-2147968296.jpg?size=338&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
          ],
        ),
      ),
    );
  }
}
