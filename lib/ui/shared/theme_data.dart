import 'package:flutter/material.dart';
import 'theme_color.dart';

final ThemeData defaultThemeData = ThemeData(
  appBarTheme: AppBarTheme(brightness: Brightness.light),
  primarySwatch: ThemeColor.primary,
  fontFamily: 'OpenSans',
  textTheme: ThemeData.light().textTheme.copyWith(
        bodyText2: TextStyle(
          color: Color.fromRGBO(65, 74, 76, 1),
        ),
        bodyText1: TextStyle(
          color: Color.fromRGBO(65, 74, 76, 1),
        ),
        headline6: TextStyle(
            color: Color.fromRGBO(65, 74, 76, 1), fontWeight: FontWeight.bold),
      ),
);
