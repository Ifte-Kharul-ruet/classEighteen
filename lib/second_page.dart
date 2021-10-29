import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const routName = '/second';
  final String img;
  final String t1;
  final String t2;
  SecondPage({required this.img, required this.t1, required this.t2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x22ffff00),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              img,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Text(t1),
            Text(t2),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/4.jpg',
                  height: 50.0,
                ))
          ],
        ),
      ),
    );
  }
}
