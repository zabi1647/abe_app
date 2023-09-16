import 'package:flutter/material.dart';

Container Iconbutton(
    {double? width, double? height, Icon? icon, Image? image}) {
  return Container(
    height: height,
    width: width,
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
    child: Center(
      child: icon,
    ),
  );
}
