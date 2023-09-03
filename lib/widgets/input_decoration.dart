import 'package:flutter/material.dart';

import '../utilities/constants/colors.dart';
import '../utilities/font_styles/font_style.dart';

InputDecoration textInputDecoration(double fontSize, String labelText)  
{
  return InputDecoration(

    labelStyle: content(fontSize).copyWith(color: secondary.withOpacity(0.5)),
    labelText: labelText,
    floatingLabelBehavior: FloatingLabelBehavior.never,

    filled: false,


    enabledBorder: const UnderlineInputBorder
    (
      borderSide: BorderSide(
          width: 1,
          color: secondaryLight
        )
    ),


    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1.5,
        color: secondary
      )
    ),

    errorStyle: content(fontSize).copyWith
    (
      color: const Color(0xFFE66A6A),
      fontSize: fontSize-4,
    )
  );
}