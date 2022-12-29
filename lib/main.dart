import 'package:flutter/material.dart';
import 'package:ngabuburit/pages/detail_pages.dart';
import 'package:ngabuburit/pages/home_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomePage(),
      routes: {
        '/details': (context) => DetailPage(),
      },
    );
  }
}
