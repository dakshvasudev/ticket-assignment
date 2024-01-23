import 'package:flutter/material.dart';

@immutable
class PlaceboTypography extends ThemeExtension<PlaceboTypography> {
  const PlaceboTypography({
    required this.largeTitle,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.subtitle1,
    required this.subtitle2,
    required this.largeBody,
    required this.body,
    required this.strong,
    required this.smallBody,
    required this.strongSmallBody,
    required this.preTitle,
  });

  final TextStyle largeTitle;
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;
  final TextStyle title4;
  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle largeBody;
  final TextStyle body;
  final TextStyle strong;
  final TextStyle smallBody;
  final TextStyle strongSmallBody;
  final TextStyle preTitle;

  @override
  PlaceboTypography copyWith({
    TextStyle? largeTitle,
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? title3,
    TextStyle? title4,
    TextStyle? subtitle1,
    TextStyle? subtitle2,
    TextStyle? largeBody,
    TextStyle? body,
    TextStyle? strong,
    TextStyle? smallBody,
    TextStyle? strongSmallBody,
    TextStyle? preTitle,
  }) {
    return PlaceboTypography(
      largeTitle: largeTitle ?? this.largeTitle,
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
      title4: title4 ?? this.title4,
      subtitle1: subtitle1 ?? this.subtitle1,
      subtitle2: subtitle2 ?? this.subtitle2,
      largeBody: largeBody ?? this.largeBody,
      body: body ?? this.body,
      strong: strong ?? this.strong,
      smallBody: smallBody ?? this.smallBody,
      strongSmallBody: strongSmallBody ?? this.strongSmallBody,
      preTitle: preTitle ?? this.preTitle,
    );
  }

  // Controls how the properties change on theme changes
  @override
  PlaceboTypography lerp(ThemeExtension<PlaceboTypography>? other, double t) {
    if (other is! PlaceboTypography) {
      return this;
    }
    return this;
  }

  @override
  String toString() => 'PlaceboTypography(' ')';
}

// the light theme
const textTheme = PlaceboTypography(
  largeTitle: TextStyle(
    color: Colors.white,
    fontSize: 34,
    letterSpacing: -0.68,
    fontWeight: FontWeight.w700,
  ),
  title1: TextStyle(
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.99,
  ),
  title2: TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.4,
    height: 1.3,
  ),
  title3: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.4,
    height: 1.2,
  ),
  title4: TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.32,
    height: 1.2,
  ),
  subtitle1: TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.34,
  ),
  subtitle2: TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.34,
  ),
  largeBody: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.36,
  ),
  body: TextStyle(
    letterSpacing: -0.4,
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
  strong: TextStyle(
    letterSpacing: -0.4,
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  smallBody: TextStyle(
    letterSpacing: -0.4,
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  strongSmallBody: TextStyle(
    letterSpacing: -0.4,
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  preTitle: TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
  ),
);
