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
