import 'package:coutloot/widget/product.dart';
import 'package:coutloot/widget/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class Select {
  final String name;

  Select(this.name);
}

class _SearchState extends State<Search> {
  List<Select> _select = [
    Select('#othic'),
    Select('Jenny'),
    Select('Shoes'),
    Select('@karmi'),
    Select('Five'),
  ];
  List<String> _filter = [];

  int _i = 1;
  Iterable<Widget> get SelectWidgets sync* {
    for (Select select in _select) {
      yield Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: FilterChip(
          checkmarkColor: Colors.black,
          labelStyle:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          selectedColor: Colors.white,
          label: Text(
            select.name,
          ),
          selected: _filter.contains(select.name),
          onSelected: (bool sel) {
            setState(() {
              if (sel) {
                _filter.add(select.name);
              } else {
                _filter.removeWhere((String name) {
                  return name == select.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  Widget _widget(String name, String image, Function ontap) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 1),
              )
            ], shape: BoxShape.circle),
            child: CircleAvatar(
              backgroundImage: NetworkImage(image),
              onBackgroundImageError: (exception, stackTrace) {
                return Text(name);
              },
            ),
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          )
        ],
      ),
    );
  }

  Widget _widget2(String name, int i) {
    return InkWell(
        onTap: () {
          setState(() {
            _i = i;
          });
        },
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                name,
                style: TextStyle(
                    color: _i == i ? Colors.pinkAccent : Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width / 2.25,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 3,
                          color: _i == i
                              ? Colors.pinkAccent
                              : Colors.transparent))),
            )
          ],
        ));
  }

  _content() {
    if (_i == 1) {
      return Product();
    } else {
      return Profile();
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffeff1f4),
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
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Color(0xffeff1f4),
                height: MediaQuery.of(context).size.height / 11,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: SelectWidgets.toList(),
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    color: Color(0xffeff1f4),
                    height: 150,
                    padding: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        _widget('Recently',
                            'https://img.freepik.com/free-vector/turquoise-balloon_23-2147513516.jpg?size=338&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457',
                            () {
                          print('1');
                        }),
                        _widget('Promoted',
                            'https://img.freepik.com/free-vector/flying-rocket-background_1270-85.jpg?size=338&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457',
                            () {
                          print('2');
                        }),
                        _widget('Promoted',
                            'https://img.freepik.com/free-vector/cartoon-fire-flames-bonfire-campfire-isolated_284092-350.jpg?size=338&ext=jpg&uid=R2612325&ga=GA1.2.24082436.1599730457',
                            () {
                          print('3');
                        })
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 130, left: 50),
                    padding: EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.grey.withOpacity(0.5)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Search anything',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black45),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _widget2('Product', 1),
                  _widget2('Profile', 2),
                ],
              ),
              Container(
                child: _content(),
                // height: 100,
              )
            ],
          ),
        ));
  }
}
