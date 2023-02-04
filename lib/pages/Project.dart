import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/Palette.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
          onPressed: () => {
            debugPrint('back button pressed!')
            //Navigator.of(context).pop()
          },
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 300.0,
                        width: 300.0,
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
                          height: 300.0,
                          width: 300.0,
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Project Title',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 32.0,
                          fontFamily: 'GT',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'In the field of healthcare, accurately and efficiently diagnosing diseases is crucial for providing timely and effective treatment. Traditional methods of diagnosis can be time-consuming and may not always lead to accurate results. In this project, we present an ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20.0,
                          fontFamily: 'GT',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Technologies used :-',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 24.0,
                          fontFamily: 'GT',
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      GridView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/right-2.png',
                                scale: 20,
                              ),
                              Text(
                                'Technologies used ',
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.jetBrainsMono(
                                  textStyle: const TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        padding: EdgeInsets.zero,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 0.0,
                          mainAxisSpacing: 5.0,
                          mainAxisExtent: 30.0,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Stack(
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const KnowMePage(),
                            //   ),
                            // );
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
                                    'Contribute!',
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
                                    'assets/icons/code.png',
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
