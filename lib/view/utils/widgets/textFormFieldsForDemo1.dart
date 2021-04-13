import 'package:flutter/material.dart';

import '../constants.dart';

Widget customTextFormField({
  String labelName,
  IconData icon,
}) {
  return TextFormField(
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      labelText: labelName,
      hoverColor: whiteColor,
      prefixIcon: Icon(
        icon,
        color: whiteColor,
      ),
      labelStyle: TextStyle(color: whiteColor),
      focusedBorder: OutlineInputBorder(
        borderSide: new BorderSide(color: whiteColor),
      ),
      border: new OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ),
  );
}
