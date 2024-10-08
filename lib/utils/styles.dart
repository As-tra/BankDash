import 'package:bank_dashboard/constants.dart';
import 'package:bank_dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle interRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 12),
      color: kPrimary1,
    );
  }

  static TextStyle interMedium16(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 16),
      fontWeight: FontWeight.w500,
      color: kPrimary2,
    );
  }

  static TextStyle interRegular16(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 16),
      color: kPrimary3,
    );
  }

  static TextStyle interMedium12(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 12),
      fontWeight: FontWeight.w500,
      color: kPrimary1,
    );
  }

  static TextStyle interRegular13(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 13),
      color: kPrimary1,
    );
  }

  static TextStyle interRegular15(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 15),
      color: kPrimary1,
    );
  }

  static TextStyle interMedium18(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 18),
      fontWeight: FontWeight.w500,
      color: kPrimary2,
    );
  }

  static TextStyle interMedium13(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 13),
      fontWeight: FontWeight.w500,
      color: kPrimary3,
    );
  }

  static TextStyle interMedium14(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 14),
      fontWeight: FontWeight.w500,
      color: kPrimary3,
    );
  }

  static TextStyle interMedium15(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 15),
      fontWeight: FontWeight.w500,
      color: kSecondary,
    );
  }

  static TextStyle interSemiBold16(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 16),
      fontWeight: FontWeight.w600,
      color: kPrimary3,
    );
  }

  static TextStyle interSemiBold14(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 14),
      fontWeight: FontWeight.w600,
      color: kPrimary3,
    );
  }

  static TextStyle interBold18(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 18),
      fontWeight: FontWeight.w700,
      color: kSurface,
    );
  }

  static TextStyle interSemiBold28(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 28),
      fontWeight: FontWeight.w600,
      color: const Color(0xff343C6A),
    );
  }

  static TextStyle interSemiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 20),
      fontWeight: FontWeight.w600,
      color: const Color(0xff343C6A),
    );
  }

  static TextStyle latoSemiBold16(BuildContext context) {
    return TextStyle(
      fontFamily: kLato,
      fontSize: getResponsiveFontSize(context: context, baseSize: 16),
      fontWeight: FontWeight.w600,
      color: kSurface,
    );
  }

  static TextStyle latoSemiBold15(BuildContext context) {
    return TextStyle(
      fontFamily: kLato,
      fontSize: getResponsiveFontSize(context: context, baseSize: 15),
      fontWeight: FontWeight.w600,
      color: kSurface,
    );
  }

  static TextStyle latoSemiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: kLato,
      fontSize: getResponsiveFontSize(context: context, baseSize: 20),
      fontWeight: FontWeight.w600,
      color: kSurface,
    );
  }

  static TextStyle latoSemiBold22(BuildContext context) {
    return TextStyle(
      fontFamily: kLato,
      fontSize: getResponsiveFontSize(context: context, baseSize: 22),
      fontWeight: FontWeight.w600,
      color: kSurface,
    );
  }

  static TextStyle latoRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: kLato,
      fontSize: getResponsiveFontSize(context: context, baseSize: 12),
      color: kSurface,
    );
  }

  static TextStyle abelRegular25(BuildContext context) {
    return TextStyle(
      fontFamily: kAbel,
      fontSize: getResponsiveFontSize(context: context, baseSize: 25),
      color: const Color(0xff343C6A),
    );
  }

  static TextStyle interSemiBold22(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 22),
      fontWeight: FontWeight.w600,
      color: const Color(0xff343C6A),
    );
  }

  static TextStyle interSemiBold17(BuildContext context) {
    return TextStyle(
      fontFamily: kInter,
      fontSize: getResponsiveFontSize(context: context, baseSize: 17),
      fontWeight: FontWeight.w600,
      color: const Color(0xff343C6A),
    );
  }
}

double getResponsiveFontSize({
  required BuildContext context,
  required double baseSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseSize * scaleFactor;
  return responsiveFontSize.clamp(baseSize * 0.8, baseSize * 1.2);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width > SizeConfig.desktop) {
    return width / 1800;
  } else if (width > SizeConfig.tablet) {
    return width / 1300;
  } else {
    return width / 400;
  }
}
