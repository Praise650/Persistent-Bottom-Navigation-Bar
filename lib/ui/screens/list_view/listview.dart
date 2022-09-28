import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/ui/screens/listview_desc_page/listview_desc_page.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Infinite List"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListViewDescPage(
                    label: "Number $index",
                  ),
                ),
              );
            },
            leading: Text("$index"),
            title: Text("Number $index"),
          );
        },
      ),
    );
  }
}
