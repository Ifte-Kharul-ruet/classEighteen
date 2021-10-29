import 'package:flutter/material.dart';
import 'second_page.dart';
import 'third_page.dart';

void main() {
  runApp(MyApp());
}

final String imgPath = 'assets/images/4v.jpg';
final String text1 = 'Apache 4V (4m edition)';
final String text2 = '\$ 1200';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (ctx) => MyHomePage(),
        SecondPage.routName: (ctx) =>
            SecondPage(img: imgPath, t1: text1, t2: text2),
        '/third': (ctx) => ThirdPage(),
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is the first Page'),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              child: Image.asset(
                imgPath,
              ),
              onTap: () {
                Navigator.pushNamed(context, SecondPage.routName);
              },
            ),
            Text(text1),
            Text(text2),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/third');
        },
        child: Icon(Icons.next_plan_rounded),
      ),
    );
  }
}
