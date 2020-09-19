import 'package:flutter/material.dart';

class ExploreCategories extends StatefulWidget {
  @override
  _ExploreCategoriesState createState() => _ExploreCategoriesState();
}

class _ExploreCategoriesState extends State<ExploreCategories> {
  Widget _widget(String name, String img, Function ontap) {
    return InkWell(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 53,
            width: 53,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(img),
              backgroundColor: Color(0xffeff1f4),
              onBackgroundImageError: (exception, stackTrace) {
                return Text('');
              },
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          _widget('T-Shirt',
              'https://image.freepik.com/free-psd/mens-short-sleeve-t-shirt-mockups_126278-122.jpg',
              () {
            print('1');
          }),
          _widget('Jeans',
              'https://image.freepik.com/free-photo/jeans_1203-8093.jpg', () {
            print('2');
          }),
          _widget('Shoes',
              'https://image.freepik.com/free-photo/pair-trainers_144627-3799.jpg',
              () {
            print('3');
          }),
          _widget('Handbag',
              'https://img.freepik.com/free-photo/beautiful-elegance-luxury-fashion-women-blue-handbag_74190-4887.jpg?size=626&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457',
              () {
            print('4');
          }),
        ],
      ),
    );
  }
}
