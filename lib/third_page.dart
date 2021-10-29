import 'package:class_eighteen/second_page.dart';

import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, SecondPage.routName);
              //Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SecondPage(img: img, t1: t1, t2: t2)))
            },
            child: FlutterLogo()),
      ),
    );
  }
}
