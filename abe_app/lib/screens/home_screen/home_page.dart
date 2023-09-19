import 'package:abe_app/common_widgets/icon_container.dart';
import 'package:abe_app/common_widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 1,
              ),
            ],
            color: Colors.white,
          ),
          child: IconButton(
              iconSize: 25,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
              )),
        ),
        actions: [
          Iconbutton(
              width: width * 0.1,
              height: height * 0.1,
              icon: const Icon(Icons.search_rounded)),
          spacer(width: width * 0.05),
          Iconbutton(
            width: width * 0.1,
            height: height * 0.1,
            icon: const Icon(Icons.notifications_on),
          ),
          spacer(width: width * 0.05),
          Container(
            height: height * 0.1,
            width: width * 0.1,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  blurRadius: 8,
                )
              ],
              color: Colors.white,
              image: const DecorationImage(
                  image: AssetImage('assets/human.jpg'), fit: BoxFit.cover),
            ),
          ),
          spacer(width: width * 0.05),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            spacer(height: height * 0.02),
            Container(
              width: width * 0.8,
              height: height * 0.125,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(height * 0.025),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(1, 2),
                    )
                  ]),
              child: Row(
                children: [
                  spacer(width: width * 0.06),
                  SvgPicture.asset(
                    'assets/sun.svg',
                    width: width * 0.07,
                    height: height * 0.07,
                  ),
                  spacer(width: width * 0.025),
                  const Text(
                    "Good Morning",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  spacer(width: width * 0.025),
                  const Text(
                    "DAVID",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            spacer(height: height * 0.05),
            DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(0),
                      width: width * 0.8,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              offset: Offset(1, 2),
                            )
                          ]),
                      child: TabBar(
                          unselectedLabelColor: Colors.white,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.black,
                          ),
                          indicatorSize: TabBarIndicatorSize
                              .label, // Set indicatorSize to label
                          indicatorWeight: 2.0,
                          tabs: [
                            Container(
                              padding: EdgeInsets.all(0),
                              width: width * 0.4,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(child: Text("zohaib")),
                            ),
                            Container(
                              width: width * 0.4,
                              height: height * 0.05,
                              child: Center(child: Text("zohaib")),
                            ),
                          ]),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
