import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/app/strings.dart';

class ListViewDescPage extends StatelessWidget {
  final String label;

  const ListViewDescPage({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String url ="https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2014/3/21/1395401774125/Lorem-ipsum-011.jpg?width=620&quality=85&fit=max&s=48a5c92436d831392306b23d62875a7c";
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Lorem Ipsum Dolor Sit Amet',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                AppStrings.desc1,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 20),
              Image.network(url),
              const SizedBox(height: 10),
              const Text(
                AppStrings.desc2,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


