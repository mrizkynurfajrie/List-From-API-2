import 'package:bks_test/shared/constants/colors.dart';
import 'package:flutter/material.dart';

Widget verticalSpace(double v) {
  return SizedBox(height: v);
}

Widget horizontalSpace(double v) {
  return SizedBox(width: v);
}

class Shadows {
  static List<BoxShadow> get universal => [
        BoxShadow(
            color: const Color(0xff333333).withOpacity(.13),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 5)),
      ];
  static List<BoxShadow> get small => [
        BoxShadow(
            color: const Color(0xff333333).withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 1)),
      ];

  static List<BoxShadow> get menu => [
        BoxShadow(
            color: const Color(0xFF000000).withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 4)),
      ];
  static List<BoxShadow> get none => [
        BoxShadow(
            color: AppColor.neutral.shade50,
            spreadRadius: 0,
            blurRadius: 0,
            offset: const Offset(0, 0)),
      ];

  static List<BoxShadow> get shadowsUp => [
        BoxShadow(
            color: const Color(0xff333333).withOpacity(.15),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(-1, 0)),
      ];
}