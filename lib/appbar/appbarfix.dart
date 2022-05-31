import 'package:flutter/material.dart';
import 'package:jobportal/pages/account.dart';
import 'package:jobportal/pages/history.dart';
import 'package:jobportal/pages/home.dart';
import 'package:jobportal/pages/joblist.dart';
import 'package:jobportal/pages/search.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class appbar_ extends StatefulWidget {
  appbar_({Key? key}) : super(key: key);

  @override
  State<appbar_> createState() => _appbar_State();
}

class _appbar_State extends State<appbar_> {
  int _selectedNavbar = 0;
  final screen = [
    home(),
    search(),
    joblist(),
    history(),
    CardProfile()
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Image(image: AssetImage('images/logo.png'), height: 50, width: 150,),
      backgroundColor: Color.fromARGB(255, 16, 207, 255)
    ),
    body: screen[_selectedNavbar],
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex:_selectedNavbar ,
      onTap: _changeSelectedNavBar,
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
       unselectedItemColor: Colors.black45,
        showUnselectedLabels: true,
        iconSize: 25,
      items: [
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Container(
            child: ClipPolygon(
              sides: 6,
              child: Container(
                 color: Colors.lightBlueAccent,
                 child: Icon(FontAwesomeIcons.shoppingBag),
              ),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Account',
        )
      ],
    ),

    );
  }
}