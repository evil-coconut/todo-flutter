import 'package:flutter/material.dart';
import 'package:todo/core/resource/fonts.dart';

class TextStyles {
  static TextStyle main(Color color) =>
    TextStyle(
      color: color,
      fontFamily: AppFonts.mainRegular,
      fontSize: 16,
    );

  static TextStyle title(Color color) =>
    TextStyle(
      color: color,
      fontFamily: AppFonts.mainSemiBold,
      fontSize: 18,
    );

  static TextStyle medium10(Color color) =>
    TextStyle(
      color: color,
      fontFamily: AppFonts.mainMedium,
      fontSize: 10,
    );

  static TextStyle medium12(Color color) =>
    TextStyle(
      color: color,
      fontFamily: AppFonts.mainMedium,
      fontSize: 12,
    );

  static TextStyle regular12(Color color) =>
    TextStyle(
      color: color,
      fontFamily: AppFonts.mainRegular,
    );

  static TextStyle regular14(Color color) =>
    TextStyle(
      color: color,
      fontFamily: AppFonts.mainRegular,
      fontSize: 14,
    );

  static TextStyle regular18(Color color) =>
    TextStyle(
      color: color,
      fontFamily: AppFonts.mainRegular,
      fontSize: 18,
    );
}