import 'package:flutter/material.dart';
import '../utilities/font_styles/font_style.dart';

class TooSmallScreen extends StatelessWidget {
  const TooSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Too small screen!', style: headingMedium(tabletH3FontSize)))
    );
  }
}