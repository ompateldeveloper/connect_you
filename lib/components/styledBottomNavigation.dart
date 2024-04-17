import 'package:flutter/material.dart';

class StyledBottomNavigation extends StatefulWidget {
  final int currentIndex;
  final PageController pageController;
  final Function(int) onTabTapped;
  const StyledBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.pageController,
    required this.onTabTapped,
  });

  @override
  State<StyledBottomNavigation> createState() => _StyledBottomNavigationState();
}

class _StyledBottomNavigationState extends State<StyledBottomNavigation> {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      onTap: widget.onTabTapped,
      elevation: 1,
      items: [
        BottomNavigationBarItem(
            label: 'Home',
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black,
              ),
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            icon: Container(
              padding: EdgeInsets.all(8),
              color: Colors.transparent,
              child: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
            )),
        BottomNavigationBarItem(
            label: 'Search',
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black,
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            icon: Container(
              padding: EdgeInsets.all(8),
              color: Colors.transparent,
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )),
        BottomNavigationBarItem(
            label: 'Add',
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black,
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            icon: Container(
              padding: EdgeInsets.all(8),
              color: Colors.transparent,
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            )),
        BottomNavigationBarItem(
            label: 'User',
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black,
              ),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            icon: Container(
              padding: EdgeInsets.all(8),
              color: Colors.transparent,
              child: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
            )),
      ],
    );
  }
}
