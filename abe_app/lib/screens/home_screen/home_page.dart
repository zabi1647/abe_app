import 'package:abe_app/common_widgets/icon_container.dart';
import 'package:abe_app/common_widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Iconbutton(
              width: width * 0.1,
              height: height * 0.1,
              icon: Icon(Icons.search_rounded)),
          spacer(width: width * 0.05),
          Iconbutton(
            width: width * 0.1,
            height: height * 0.1,
            icon: Icon(Icons.notifications_on),
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
            ),
            child: SvgPicture.asset(
              'assets/david.svg',
              fit: BoxFit.fill,
              semanticsLabel: 'Svg iamge',
              width: width * 0.08,
              height: height * 0.08,
            ),
          )
        ],
      ),
    );
  }
}
