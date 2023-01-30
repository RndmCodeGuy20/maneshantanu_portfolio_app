import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 400.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff000000),
                    border: Border.all(
                      color: const Color(0xff000000),
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                Positioned(
                  top: -4,
                  right: 4,
                  child: Container(
                    padding: EdgeInsets.zero,
                    height: 400.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      color: const Color(0xffF2E41D),
                      border: Border.all(
                        color: const Color(0xff000000),
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const FittedBox(
                      child: null,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  left: 15,
                  child: Image.asset(
                    'assets/images/star.png',
                    scale: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'Shantanu Mane',
              style: TextStyle(
                fontFamily: 'GT',
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Developer | Athlete | Student',
              style: TextStyle(
                fontFamily: 'GT',
                fontSize: 24.0,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 60.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Know Me!',
                    style: TextStyle(
                      fontFamily: 'GT',
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Positioned(
                  top: -4,
                  right: 4,
                  child: TextButton(
                    onPressed: () {
                      print('kya karunga jaanke?');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.zero,
                      height: 60.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2E41D),
                        border: Border.all(
                          color: const Color(0xff000000),
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Know Me!',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 24.0,
                                fontFamily: 'GT',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset(
                              'assets/icons/right-3.png',
                              scale: 20,
                              matchTextDirection: true,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
