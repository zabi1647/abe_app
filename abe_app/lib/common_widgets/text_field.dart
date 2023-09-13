import 'package:flutter/material.dart';

TextFormField inputfield(
    {String? guss, TextEditingController? controller, bool? showtext}) {
  return TextFormField(
    controller: controller,
    obscureText: showtext ?? false,
    decoration: InputDecoration(
      hintText: guss,
    ),
  );
}
