import 'package:flutter/material.dart';

import '../list_view/listview.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Page 1, Hola Buenos Dias"),
        ),
        body: Align(
          alignment: Alignment.center,
          child: FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const ListViewPage(),
                ),
              );
            },
            child: const Text("Switch Page - Subscribe"),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
