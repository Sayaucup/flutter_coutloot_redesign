import 'package:flutter/material.dart';

class RecentClosetonsale extends StatefulWidget {
  @override
  _RecentClosetonsaleState createState() => _RecentClosetonsaleState();
}

class _RecentClosetonsaleState extends State<RecentClosetonsale> {
  Widget _widget(String name, String img) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 53,
          width: 53,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(img),
            onBackgroundImageError: (exception, stackTrace) {
              return Text('data');
            },
            backgroundColor: Color(0xffeff1f4),
          ),
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 0, 0, 0.4)),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(bottom: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            _widget('Pinkie',
                'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _widget('Gilda',
                'https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _widget('Lorena',
                'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            _widget('Charley',
                'https://images.pexels.com/photos/38289/portrait-photography-profile-face-one-38289.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ],
        ),
      ),
    );
  }
}
