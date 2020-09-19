import 'package:coutloot/screen/bottomtab/home.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab = 2;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffef3d55),
        onPressed: () {
          setState(() {
            currentScreen = Home();
            currentTab = 2;
          });
        },
        child: Text(
          'Sell',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xffeff1f4)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    currentScreen = Home();
                    currentTab = 0;
                  });
                },
                child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentTab == 0
                          ? Color(0xffef3d55)
                          : Color(0xffeff1f4),
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentScreen = Home();
                    currentTab = 1;
                  });
                },
                child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentTab == 1
                          ? Color(0xffef3d55)
                          : Color(0xffeff1f4),
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentScreen = Home();
                    currentTab = 3;
                  });
                },
                child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentTab == 3
                          ? Color(0xffef3d55)
                          : Color(0xffeff1f4),
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentScreen = Home();
                    currentTab = 4;
                  });
                },
                child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentTab == 4
                          ? Color(0xffef3d55)
                          : Color(0xffeff1f4),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
