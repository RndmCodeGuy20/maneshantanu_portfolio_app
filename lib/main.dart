import 'package:flutter/material.dart';
import 'package:watch_shop_app/constants/Palette.dart';
import 'package:watch_shop_app/pages/AppBar.dart';
import 'package:watch_shop_app/pages/Home.dart';
import 'package:watch_shop_app/pages/KnowMe.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      theme: ThemeData(
        primarySwatch: Palette.primaryBackground,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'assets/icons/back.png',
            scale: 15,
          ),
          elevation: 0,
        ),
        body: const KnowMePage(),
        backgroundColor: Palette.primaryBackground,

      ),
    );
  }
}
