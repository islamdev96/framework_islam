// ignore_for_file: unused_element, must_be_immutable

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../core/constant/resources/color_manager.dart';
// import '../../screen/favorite/favorite_home_page.dart';
// import '../../screen/favorite/person.dart';
// import '../../screen/home/home_page.dart';

class BottomNavigationBarAll extends StatefulWidget {
  const BottomNavigationBarAll({super.key});

  @override
  State<BottomNavigationBarAll> createState() => _BottomNavigationBarAllState();
}

class _BottomNavigationBarAllState extends State<BottomNavigationBarAll> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    // const Person(),
    // const HomePage(),
    // const FavoriteHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        // backgroundColor: ColorManager.backgroundcolor,
        // color: ColorManager.kPrimary,
        // buttonBackgroundColor: ColorManager.kPrimary,
        index: _currentIndex,
        key: const Key('bottomNavigationBar'),
        letIndexChange: (index) => true,
        animationDuration: const Duration(milliseconds: 1000),
        animationCurve: Curves.easeInOutCubicEmphasized,
        // index: true ? 3 : 1,
        height: 48.h,
        items: const <Widget>[
          Icon(Icons.person, size: 25, color: Colors.white),
          Icon(Icons.home, size: 25, color: Colors.white),
          Icon(Icons.favorite, size: 25, color: Colors.white),
        ],
        onTap: onTabTapped,
      ),
    );
  }

////////
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
