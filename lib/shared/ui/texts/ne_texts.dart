import 'package:flutter/material.dart';

abstract class NeText extends Text {
  NeText(
    super.data, {
    super.key,
    Color? color,
    double? fontSize,
    String? fontFamily,
    FontWeight? fontWeight,
    super.textAlign,
  }) : super(
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
          ),
        );

  NeText.bold(
    super.data, {
    super.key,
    Color? color,
    double? fontSize,
    String? fontFamily,
    super.textAlign,
  }) : super(
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: FontWeight.bold,
          ),
        );
}

class NeDisplayText extends NeText {
  NeDisplayText(
    super.data, {
    super.key,
    super.color,
    super.fontWeight,
    super.textAlign,
  }) : super(
          fontSize: 36,
          fontFamily: 'Karla',
        );
}

class NeH1Text extends NeText {
  NeH1Text(
    super.data, {
    super.key,
    super.color,
    super.fontWeight,
    super.textAlign,
  }) : super(
          fontSize: 28,
          fontFamily: 'Karla',
        );

  NeH1Text.bold(
    super.data, {
    super.key,
    super.color,
    super.textAlign,
  }) : super.bold(
          fontSize: 28,
          fontFamily: 'Karla',
        );
}

class NeH2Text extends NeText {
  NeH2Text(
    super.data, {
    super.key,
    super.color,
    super.fontWeight,
    super.textAlign,
  }) : super(
          fontSize: 20,
          fontFamily: 'Karla',
        );

  NeH2Text.bold(
    super.data, {
    super.key,
    super.color,
    super.textAlign,
  }) : super.bold(
          fontSize: 20,
          fontFamily: 'Karla',
        );
}

class NeRegularText extends NeText {
  NeRegularText(
    super.data, {
    super.key,
    super.color,
    super.fontWeight,
    super.textAlign,
  }) : super(
          fontSize: 14,
          fontFamily: 'Karla',
        );

  NeRegularText.inter(
    super.data, {
    super.key,
    super.color,
    super.fontWeight,
    super.textAlign,
  }) : super(
          fontSize: 14,
          fontFamily: 'Inter',
        );
}

class NeSmallText extends NeText {
  NeSmallText(
    super.data, {
    super.key,
    super.color,
    super.fontWeight,
    super.textAlign,
  }) : super(
          fontSize: 10,
          fontFamily: 'Karla',
        );
}
