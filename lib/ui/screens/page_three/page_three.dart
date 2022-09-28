import 'package:flutter/material.dart';

import '../../../listview.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Page 3, Praise Mucho Gusto"),
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
            child: const Text("Switch Page - Comment"),
          ),
        ),
      ),
    );
  }
}
