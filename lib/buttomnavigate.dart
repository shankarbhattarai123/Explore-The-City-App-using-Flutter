import 'package:flutter/material.dart';
import 'package:places_autocomplete/src/screens/favourite.dart';
import 'package:places_autocomplete/src/screens/profile_page.dart';
import 'package:places_autocomplete/src/screens/add_new_place_page.dart';

import 'src/screens/home_page.dart';

class Bottomnavigate extends StatefulWidget {
  @override
  _BottomnavigateState createState() => _BottomnavigateState();
}

class _BottomnavigateState extends State<Bottomnavigate> {
  int _selectedIndex = 0;
  List<Widget> meroWidget = <Widget>[
    FrontpageWidget(),
    Favourite1(),
    FormScreen(),
    ProfilepageWidget()
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: meroWidget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favourite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: "Add Place",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ], currentIndex: _selectedIndex, onTap: _onItemTap),
    );
  }
}
