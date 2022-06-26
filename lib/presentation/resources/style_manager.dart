import 'package:flutter/material.dart';

import 'font_manager.dart';


TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color,
) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: FontManager.fontFamily,
      color: color,
    );
// regular style

TextStyle getRegularTextStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize,
      FontWeightManager.regular,
      color,
    );

// light style

TextStyle getLightTextStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize,
      FontWeightManager.light,
      color,
    ); // medium style

TextStyle getMediumTextStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize,
      FontWeightManager.medium,
      color,
    );
// bold style

TextStyle getBoldTextStyle(
        {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize,
      FontWeightManager.bold,
      color,
    );

// semiBold Style
TextStyle getSemiBoldTextStyle(
    {double fontSize = FontSize.s12, required Color color}) =>
    _getTextStyle(
      fontSize,
      FontWeightManager.semiBold,
      color,
    );

// mdpi  , hdpi , xhdpi , xxhdpi , xxxhdpi ,