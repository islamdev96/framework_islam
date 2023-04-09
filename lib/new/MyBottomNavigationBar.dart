// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
// import '../core/constant/resources/color_manager.dart';
// import '../view/screen/favorite/favorite_home_page.dart';
// import '../view/screen/favorite/person.dart';
// import '../view/screen/home/home_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    //   const Person(),
    //   const HomePage(),
    //   const FavoriteHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        mouseCursor: MouseCursor.defer,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        // backgroundColor: ColorManager.kPrimary,
        // selectedItemColor: ColorManager.backgroundpersonalimage,
        // unselectedItemColor: ColorManager.backgroundcolor,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
