import 'package:flutter/material.dart';

import '../../screens/page_one/page_one.dart';
import '../../screens/page_three/page_three.dart';
import '../../screens/page_two/page_two.dart';

/////////////////////////////////////////////////////////////////////////////
/// NORMAL NAVIGATOR SOLUTION
////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////
/// No persistence
//////////////////////////////////////////////////////////////////////////
class NormalBottomNavBar extends StatefulWidget {
  const NormalBottomNavBar({Key? key}) : super(key: key);

  @override
  NormalBottomNavBarState createState() => NormalBottomNavBarState();
}

class NormalBottomNavBarState extends State<NormalBottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _children = const [
    Page1(),
    Page2(),
    Page3(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: 'Page1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Page2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label:'Page3',
          ),
        ],
      ),
    );
  }
}
