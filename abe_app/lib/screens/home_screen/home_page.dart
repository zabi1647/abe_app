import 'package:abe_app/common_widgets/icon_container.dart';
import 'package:abe_app/common_widgets/spacer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 40,
          height: 40,
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
              iconSize: 20,
              onPressed: () {},
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
    );
  }
}
