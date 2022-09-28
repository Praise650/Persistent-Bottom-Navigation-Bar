import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/page_one/page_one.dart';
import '../../screens/page_three/page_three.dart';
import '../../screens/page_two/page_two.dart';

/////////////////////////////////////////////////////////////////////////////
/// CUPERTINO SOLUTION
////////////////////////////////////////////////////////////////////////////
class CupertinoStoreHomePage extends StatelessWidget {
  const CupertinoStoreHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label:'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label:'Cart',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page1(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page2(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(
                child: Page3(),
              );
            });
          default: return CupertinoTabView(builder: (context) {
            return const CupertinoPageScaffold(
              child: Page1(),
            );
          });
        }
      },
    );
  }
}


