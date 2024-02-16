import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get themeData => ThemeData(
        primarySwatch: Colors.deepPurple,
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

//Colors
  static Color creamColor = Color(0xfff5f5f5);

  static Color darkBluishColor = Color(0xff403b58);
}
