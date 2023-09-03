import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/font_styles/font_style.dart';
import '../main_title.dart';

class MobileNavBar extends StatelessWidget {
  final Color backgroundColor;
  const MobileNavBar({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      iconTheme: const IconThemeData(color: secondary),
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.transparent,

      title: const MainTitle(fontSizeTitle: mobileH1FontSize, fontSizeDescription: mobilecontentFontSize, titleColor: secondary, desColor: secondaryLight,),

      flexibleSpace: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: backgroundColor.withOpacity(0.1),
          ),
        ),
      ),
    );
  }
}