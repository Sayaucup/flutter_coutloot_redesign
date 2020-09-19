import 'package:carousel_slider/carousel_slider.dart';
import 'package:coutloot/bottomBar/bottombar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
];

class _IntroState extends State<Intro> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        backgroundColor: Color(0xffeff1f4),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 60),
                child: CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          current = index;
                        });
                      },
                      initialPage: current,
                      height: height / 2.8,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                    ),
                    items: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 2,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 2,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 2,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 2,
                        backgroundColor: Colors.white,
                      ),
                    ]
                    // imgList.map((e) {
                    //   return CircleAvatar(
                    //     radius: MediaQuery.of(context).size.height / 5,
                    //     backgroundImage: NetworkImage(
                    //       e,
                    //     ),
                    //   );
                    // }).toList(),
                    ),
              ),
              Text(
                'Buy',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 85, vertical: 15),
                child: Text(
                  'Shop from thousands of brands at throwaway prices!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((url) {
                  int index = imgList.indexOf(url);
                  return Container(
                    width: 5,
                    height: 5,
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: current == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => BottomBar()));
                },
                child: Container(
                  margin:
                      EdgeInsets.only(top: 30, left: 50, right: 50, bottom: 20),
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Icon(Icons.apps),
                        ),
                        Text(
                          'Mobile Number',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => BottomBar()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.9,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xff3b5998),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Facebook',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => BottomBar()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.9,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xffea4335),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Google',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
