import 'package:flutter/material.dart';

import '../constants/Palette.dart';

class KnowMePage extends StatefulWidget {
  const KnowMePage({Key? key}) : super(key: key);

  @override
  State<KnowMePage> createState() => _KnowMePageState();
}

class _KnowMePageState extends State<KnowMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        top: -2,
                        right: 2,
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
                              Image.asset(
                                'assets/icons/contact.png',
                                scale: 20,
                              ),
                            ],
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
              const Text(
                "Yes, I'm a developer...\nNo, I can't fix your PC...",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 32.0,
                  fontFamily: 'GT',
                  fontWeight: FontWeight.bold,
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
                            child: const Center(
                              child: Text(
                                'Machine Learning',
                                style: TextStyle(
                                  fontFamily: 'GT',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
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
                            child: const Center(
                              child: Text(
                                'Android Dev',
                                style: TextStyle(
                                  fontFamily: 'GT',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
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
                            child: const Center(
                              child: RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  'Data Analytics',
                                  style: TextStyle(
                                    fontFamily: 'GT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
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
                                child: const Center(
                                  child: Text(
                                    'Frontend Web Dev',
                                    style: TextStyle(
                                      fontFamily: 'GT',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
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
                                child: const Center(
                                  child: Text(
                                    'Backend Web Dev',
                                    style: TextStyle(
                                      fontFamily: 'GT',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
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
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 3.0, color: Colors.black),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7),
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
                    'assets/icons/plane.png',
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
