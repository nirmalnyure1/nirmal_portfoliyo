import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfoliyo/Responsive/responsive_layout.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   title: const Text(
        //     'Wellcome to my Portfoliyo',
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   actions: <Widget>[
        //     IconButton(
        //       onPressed: () {},
        //       icon: Icon(Icons.home_filled),
        //       color: Colors.white,
        //       iconSize: 30.0,
        //     ),
        //   ],
        // ),
        body: ResponsiveLayout(
          mobileBody: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Nirmal Nyure',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: SvgPicture.asset(
                            "assets/images/fdev.svg",
                            height: 200,
                            width: 200,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 100.0),
                    const Text(
                      'Project Done',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    Projects(
                      image: 'hey',
                      title: 'title',
                    )
                  ],
                ),
              ),
            ),
          ),
          tabletBody: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Nirmal ',
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: SvgPicture.asset(
                            "assets/images/fdev.svg",
                            height: 300,
                            width: 300,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 100.0),
                    const Text(
                      'Project Done',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    Projects(
                      title: 'hey',
                      image: 'body',
                    )
                  ],
                ),
              ),
            ),
          ),
          desktopBody: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Nirmal ',
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 50),
                        Flexible(
                          child: SvgPicture.asset(
                            "assets/images/fdev.svg",
                            height: 400,
                            width: 400,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 100.0),
                    const Text(
                      'Project Done',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    Projects(
                      title: 'title2',
                      image: '',
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class Projects extends StatelessWidget {
  final String title;
  final String image;
  bool? horizontal;
  Projects(
      {Key? key,
      required this.title,
      required this.image,
      this.horizontal = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
              ),
              // child:Stack(children: [Image.asset(name)],)
            ),
          );
        });
  }
}
