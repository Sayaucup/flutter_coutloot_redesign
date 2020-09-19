import 'package:coutloot/screen/intro.dart';
import 'package:flutter/material.dart';

class Sliderr extends StatefulWidget {
  @override
  _SliderrState createState() => _SliderrState();
}

class _SliderrState extends State<Sliderr> {
  Widget _slider(String img) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width / 1.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffeff1f4),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          img,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            _slider(
                'https://img.freepik.com/free-vector/modern-super-sale-banner-with-red-paint-brush_1361-2253.jpg?size=626&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
            _slider(
                'https://img.freepik.com/free-vector/winter-offer-sale-banner_79298-55.jpg?size=626&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
            _slider(
                'https://img.freepik.com/free-vector/modern-super-sale-banner-with-red-paint-brush_1361-2253.jpg?size=626&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
            _slider(
                'https://img.freepik.com/free-vector/modern-super-sale-banner-with-red-paint-brush_1361-2253.jpg?size=626&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
            _slider(
                'https://img.freepik.com/free-vector/modern-super-sale-banner-with-red-paint-brush_1361-2253.jpg?size=626&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457'),
          ],
        ),
      ),
    );
  }
}
