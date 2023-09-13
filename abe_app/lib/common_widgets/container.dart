import 'package:flutter/material.dart';

Container customizeContainer(
    {double? width, double? height, TextFormField? input}) {
  return Container(
    width: width,
    height: height,
    child: input,
  );
}
