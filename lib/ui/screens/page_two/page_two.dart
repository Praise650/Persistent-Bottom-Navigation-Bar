import 'package:flutter/material.dart';

import '../list_view/listview.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Page 2, Hola yo soy Praise."),
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
            child: const Text("Switch Page - Leave a Like"),
          ),
        ),
      ),
    );
  }
}
