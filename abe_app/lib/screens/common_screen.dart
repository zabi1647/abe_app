import 'package:abe_app/common_widgets/spacer.dart';
import 'package:flutter/material.dart';

class CommonScreen extends StatelessWidget {
  String path1, dotpic, navigatorpic;
  CommonScreen(
      {super.key,
      required this.path1,
      required this.dotpic,
      required this.navigatorpic});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(0),
              height: height * 0.75,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(path1),
              )),
            ),
            Positioned(
              top: height * 0.65,
              child: Container(
                padding: const EdgeInsets.all(0),
                height: height * 0.35,
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    spacer(height: height * 0.025),
                    Image.asset(dotpic),
                    spacer(height: height * 0.025),
                    const Text(
                      "Discover Rare",
                      style: TextStyle(fontSize: 18),
                    ),
                    const Text(
                      "Collectibles",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Text to Fill provides a flexible platform to sell your products or services so that you can focus on your sales provides a flexible platform to sell your products or services so that you can focus on your sales",
                        maxLines: 5,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    spacer(height: height * 0.015),
                    Image.asset(navigatorpic),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
