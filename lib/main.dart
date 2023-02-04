import 'package:flutter/material.dart';
import 'package:watch_shop_app/constants/Palette.dart';
import 'package:watch_shop_app/pages/AppBar.dart';
import 'package:watch_shop_app/pages/Home.dart';
import 'package:watch_shop_app/pages/KnowMe.dart';
import 'package:watch_shop_app/pages/Project.dart';
import 'package:watch_shop_app/pages/ProjectList.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shantanu Mane',
      theme: ThemeData(
        primarySwatch: Palette.primaryBackground,
      ),
      home: const HomePage(),
    );
  }
}
