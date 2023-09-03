import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:go_router/go_router.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/font_styles/font_style.dart';
import '../main_title.dart';
import '../nav_bar_items.dart';

class TabletNavBar extends StatelessWidget {
  final ScrollController controller;
  const TabletNavBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    
    final double deviceWidth = MediaQuery.of(context).size.width;

    const double aboutMeScroll = 950;
    const double connectScroll = 2300;

    return AppBar(
      centerTitle: false,

      title: const MainTitle(fontSizeTitle: tabletH1FontSize, fontSizeDescription: 14, titleColor: secondary, desColor: secondaryLight,),

      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const NavBarItem(item: 'Project', fontSize: tabletNavBarTextFontSize,),
                onTap: () => context.go('/developer_projects'),
              ),
            ),
          ],
        ),

        const SizedBox(width: 24,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
              controller.animateTo(
                  // Connect
                  deviceWidth < 900 ? connectScroll : controller.position.maxScrollExtent,
                  
                  duration: const Duration(milliseconds: 2000), 
                  curve: Curves.easeInOut
                );
              },
              child: const NavBarItem(item: 'Connect', fontSize: tabletNavBarTextFontSize,)
            ),
          ],
        ),

        const SizedBox(width: 24,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                controller.animateTo(
                  // About
                  aboutMeScroll,
                  duration: const Duration(milliseconds: 2000), 
                  curve: Curves.easeInOut
                );
              },
              child: const NavBarItem(item: 'About Me', fontSize: tabletNavBarTextFontSize,)
            ),
          ],
        ),
      ],
    
      elevation: 0,

      toolbarHeight: 200,

      backgroundColor: Colors.transparent,
    
      flexibleSpace: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: primary.withOpacity(0.1),
          ),
        ),
      ),
      
    );
  }
}