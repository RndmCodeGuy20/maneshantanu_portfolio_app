import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import 'package:watch_shop_app/pages/ProjectList.dart';

import '../constants/Palette.dart';

class KnowMePage extends StatefulWidget {
  const KnowMePage({Key? key}) : super(key: key);

  @override
  State<KnowMePage> createState() => _KnowMePageState();
}

class _KnowMePageState extends State<KnowMePage> {
  Future<void> _launchWhatsApp() async {
    var phone = "919325874285";
    var whatsappURlAndroid = "https://wa.me/${phone}?text=Hello";

    // android , web
    if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
      await launchUrl(Uri.parse(whatsappURlAndroid));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("whatsapp not installed")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Palette.primaryBackground[50],
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/left.png',
            scale: 25,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Shantanu Mane',
          style: GoogleFonts.unicaOne(
            textStyle: const TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Palette.primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Positioned(
                        top: -2,
                        right: 2,
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2.0,
                              color: const Color(0xff000000),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/me.png',
                            scale: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 175.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Positioned(
                        top: -6,
                        right: 2,
                        child: TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () {
                            debugPrint('contact');
                            // _launchWhatsApp();
                          },
                          child: Container(
                            width: 175.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffF2E41D),
                              border: Border.all(
                                width: 2.0,
                                color: const Color(0xff000000),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Contact Me!',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 24.0,
                                    fontFamily: 'GT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Image.asset(
                                  'assets/icons/contact.png',
                                  scale: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Center(
                child: Text(
                  "Yes, I'm a developer...\n\t\t\tNo, I can't fix your PC...",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 32.0,
                    fontFamily: 'GT',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                height: 400.0,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFAF0),
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    width: 2.0,
                    color: const Color(0xff1E1E1E),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFA776),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                width: 2.0,
                                color: const Color(0xff1E1E1E),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                debugPrint('ml');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ProjectsListPage(),
                                  ),
                                );
                              },
                              child: const Center(
                                child: Text(
                                  'Machine Learning',
                                  style: TextStyle(
                                    fontFamily: 'GT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Color(0xff1E1E1E),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFD787),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                width: 2.0,
                                color: const Color(0xff1E1E1E),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                debugPrint('android');
                              },
                              child: const Center(
                                child: Text(
                                  'Android Dev',
                                  style: TextStyle(
                                    fontFamily: 'GT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Color(0xff1E1E1E),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            height: 250.0,
                            // width: 80.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffCFADE8),
                              border: Border.all(
                                width: 2.0,
                                color: const Color(0xff1E1E1E),
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: TextButton(
                              onPressed: () {
                                debugPrint('data');
                              },
                              child: const Center(
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: Text(
                                    'Data Analytics',
                                    style: TextStyle(
                                      fontFamily: 'GT',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Color(0xff1E1E1E),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10.0),
                                height: 160.0,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFA89A),
                                  border: Border.all(
                                    width: 2.0,
                                    color: const Color(0xff1E1E1E),
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    debugPrint('frontend');
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Frontend Web Dev',
                                      style: TextStyle(
                                        fontFamily: 'GT',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Color(0xff1E1E1E),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10.0),
                                height: 70.0,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: const Color(0xffABE5BC),
                                  border: Border.all(
                                    width: 2.0,
                                    color: const Color(0xff1E1E1E),
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    debugPrint('backend');
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Backend Web Dev',
                                      style: TextStyle(
                                        fontFamily: 'GT',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Color(0xff1E1E1E),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2.0,
              color: const Color(0xff1E1E1E),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7.5),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: const Color(0xffFFFAF0),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: const Color(0xff6780FF),
              unselectedItemColor: const Color(0xffC0C4C8),
              // selectedItemColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                  label: 'home',
                  icon: Image.asset(
                    'assets/icons/home.png',
                    scale: 20,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.black,
                ),
                BottomNavigationBarItem(
                  label: 'home',
                  icon: Image.asset(
                    'assets/icons/education.png',
                    scale: 20,
                    color: const Color(0xffC0C4C8),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'home',
                  icon: Image.asset(
                    'assets/icons/contact-2.png',
                    scale: 20,
                    color: const Color(0xffC0C4C8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
