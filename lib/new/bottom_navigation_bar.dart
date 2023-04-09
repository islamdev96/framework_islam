// ignore_for_file: unused_element, must_be_immutable

import 'package:flutter/material.dart';

// import '../../../core/constant/resources/color_manager.dart';
// import '../view/screen/favorite/favorite_home_page.dart';
// import '../view/screen/favorite/person.dart';
// import '../view/screen/home/home_page.dart';

class BottomNavigationBarAll2 extends StatefulWidget {
  const BottomNavigationBarAll2({super.key});

  @override
  State<BottomNavigationBarAll2> createState() =>
      _BottomNavigationBarAll2State();
}

int _currentIndex = 0;
final List<Widget> _children = [
  // const HomePage(),
  // const FavoriteHomePage(),
  // const Person(),
];

class _BottomNavigationBarAll2State extends State<BottomNavigationBarAll2> {
  static int get value => 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      mouseCursor: MouseCursor.defer,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      // backgroundColor: ColorManager.kPrimary,
      // selectedItemColor: ColorManager.kPrimary,
      // unselectedItemColor: ColorManager.kPrimary,
      currentIndex: _currentIndex,
      onTap: onTabTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Favorite',
          // activeIcon: HomePage(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          // activeIcon: Person(),
        ),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
