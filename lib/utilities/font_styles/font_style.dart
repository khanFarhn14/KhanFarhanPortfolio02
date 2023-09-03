import 'package:flutter/material.dart';
import '../../utilities/constants/colors.dart';

// Desktop FontSizes
const double desktpH1FontSize = 34; 
const double desktpH2FontSize = 28; 
const double desktpH3FontSize = 24; 
const double desktpcontentFontSize = 18; 
const double desktpNavBarTextFontSize = 16; 
const double desktpDescrptnFontSize = 16;

// Tablet FontSizes
const double tabletH1FontSize = 28; 
const double tabletH2FontSize = 24; 
const double tabletH3FontSize = 20; 
const double tabletcontentFontSize = 16; 
const double tabletNavBarTextFontSize = 14; 
const double tabletDescrptnFontSize = 14;

// mobile FontSizes
const double mobileH1FontSize = 24; 
const double mobileH2FontSize = 20; 
const double mobileH3FontSize = 16; 
const double mobilecontentFontSize = 12; 
const double mobilecontentBoldFontSize = 12; 
const double mobileDescrptnFontSize = 10;


TextStyle headingLarge(double size){
  return TextStyle(
    fontFamily: 'Stolzl Bold',
    color: secondary,
    fontSize: size
  );
}

TextStyle headingMedium(double size){
  return TextStyle(
    fontFamily: 'Stolzl Medium',
    color: secondary,
    fontSize: size
  );
}

TextStyle headingSmall(double size){
  return TextStyle(
    fontFamily: 'Stolzl Medium',
    color: secondary,
    fontSize: size
  );
}

TextStyle content(double size){
  return TextStyle(
    fontFamily: 'Stolzl Regular',
    color: secondaryLight,
    fontSize: size
  );
}

TextStyle contentBold(double size){
  return TextStyle(
    fontFamily: 'Stolzl Medium',
    color: secondaryLight,
    fontSize: size
  );
}

TextStyle link(double size){
  return TextStyle(
    fontFamily: 'Stolzl Regular',
    color: const Color(0xff5387F0),
    fontSize: size,
    decoration: TextDecoration.underline
  );
}

TextStyle navBarText(double size){
  return TextStyle(
    fontFamily: 'Stolzl Regular',
    color: secondary,
    fontSize: size
  );
}

TextStyle description(double size){
  return TextStyle(
    fontFamily: 'Stolzl Book',
    color: secondaryLight,
    fontSize: size
  );
}

TextStyle cardName(double size){
  return TextStyle(
    fontFamily: 'Stolzl Medium',
    color: primary,
    fontSize: size
  );
}

TextStyle cardDescription(double size){
  return TextStyle(
    fontFamily: 'Stolzl Book',
    color: primary,
    fontSize: size
  );
}

TextStyle copyRight(double size){
  return TextStyle(
    fontFamily: 'Stolzl Regular',
    color: secondaryLight,
    fontSize: size
  );
}