import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watch_shop_app/constants/Palette.dart';
import 'package:watch_shop_app/pages/Project.dart';

class ProjectsListPage extends StatefulWidget {
  const ProjectsListPage({Key? key}) : super(key: key);

  @override
  State<ProjectsListPage> createState() => _ProjectsListPageState();
}

class _ProjectsListPageState extends State<ProjectsListPage> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "image": "assets/images/graph.png",
      "name": "TensorFlow",
    },
    {
      "image": "assets/images/graph.png",
      "name": "TensorFlow",
    },
    {
      "image": "assets/images/graph.png",
      "name": "TensorFlow",
    },
    {
      "image": "assets/images/graph.png",
      "name": "TensorFlow",
    },
    {
      "image": "assets/images/graph.png",
      "name": "TensorFlow",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryBackground,
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
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
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Center(
                  child: Text(
                    "Making machines smart\n\t\t\t\t\t\t\tenough to know when\n\t\t\tI'm being sarcastic.",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 28.0,
                      fontFamily: 'GT',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 8.0,
                  ),
                  // height: 700.0,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFAF0),
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xff1E1E1E),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "AI-Powered Fun Projects",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20.0,
                          fontFamily: 'GT',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      GridView.builder(
                        itemCount: gridMap.length,
                        itemBuilder: (context, index) {
                          return TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {
                              debugPrint('project');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProjectPage(),
                                ),
                              );
                            },
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  padding: const EdgeInsets.fromLTRB(
                                    4.0,
                                    4.0,
                                    4.0,
                                    0.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    image: const DecorationImage(
                                      image:
                                          AssetImage('assets/images/graph.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      width: 2.0,
                                      color: const Color(0xff1E1E1E),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    height: 50.0,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFFFAF0),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        width: 2.0,
                                        color: const Color(0xff1E1E1E),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${gridMap.elementAt(index)["name"]}',
                                            style: const TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 16.0,
                                              fontFamily: 'GT',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/github.png',
                                                scale: 20,
                                              ),
                                              const SizedBox(
                                                width: 4.0,
                                              ),
                                              Image.asset(
                                                'assets/icons/link.png',
                                                scale: 20,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 12.0,
                          mainAxisExtent: 250.0,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    ],
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
