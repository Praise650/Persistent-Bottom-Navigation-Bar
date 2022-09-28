import 'package:flutter/material.dart';

import '../../../screens/page_one/page_one.dart';
import '../../../screens/page_three/page_three.dart';
import '../../../screens/page_two/page_two.dart';

// class TabNavigatorRoutes {
//   static const String root = '/';
//   static const String detail = '/detail';
// }

class TabNavigator extends StatelessWidget {
  const TabNavigator(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget getChild() {
      if (tabItem == "Page1") {
        return const Page1();
      } else if (tabItem == "Page2") {
        return const Page2();
      } else {
        return const Page3();
      }
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => getChild(),
        );
      },
    );
  }
}
