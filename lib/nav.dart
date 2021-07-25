import 'package:covid_app/webscrap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:covid_app/more.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {

  int _selectedIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  final _bottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('Home',style: TextStyle(fontFamily: 'OtomanopeeOne'),),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.more_horiz),
      title: Text('More',style: TextStyle(fontFamily: 'OtomanopeeOne'),),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: _pageController,
        onPageChanged: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          MyHomepage(),
          More(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: _bottomNavigationBarItems,
        onTap: (index){
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 200), curve: Curves.easeOut);
        },
      ),
    );
  }
}
