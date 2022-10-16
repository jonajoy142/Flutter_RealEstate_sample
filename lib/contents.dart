import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);
const COLOR_DARK_BLUE = Color.fromRGBO(28, 47, 48, 1.0);
const COLOR_WHITE = Colors.white;

const TextTheme DEFAULT_TEXT_THEME = TextTheme(
  headline1:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
  headline2:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
  headline3:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
  headline4:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
  headline5:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
  headline6:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(
      color: COLOR_BLACK,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.5),
  bodyText2: TextStyle(
      color: COLOR_GREY,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.5),
  subtitle1:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w400, fontSize: 14),
  subtitle2:
      TextStyle(color: COLOR_GREY, fontWeight: FontWeight.w400, fontSize: 14),
);

const TextTheme SMALL_TEXT_THEME = TextTheme(
  headline1:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
  headline2:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
  headline3:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 28),
  headline4:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
  headline5:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
  headline6:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(
      color: COLOR_BLACK,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.5),
  bodyText2: TextStyle(
      color: COLOR_GREY,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.5),
  subtitle1:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w400, fontSize: 12),
  subtitle2:
      TextStyle(color: COLOR_GREY, fontWeight: FontWeight.w400, fontSize: 12),
);
