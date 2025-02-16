import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  colorScheme: colorScheme,
  appBarTheme: appBarTheme,
);

final ColorScheme colorScheme = ColorScheme.light().copyWith(
  surface: Color.fromRGBO(5, 30, 37, 1),
  primary: Colors.white,
  secondary: Color.fromRGBO(28, 50, 57, 1)
);

final AppBarTheme appBarTheme = AppBarTheme(
  color: Color.fromRGBO(0, 92, 117, 1),
);