import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/font_styles/font_style.dart';
import '../main_title.dart';
import '../nav_bar_items.dart';

class DesktopHeroNavBar extends StatelessWidget {
  final ScrollController controller;

  const DesktopHeroNavBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
  const double aboutMeScrollHeight = 1445;
  const double connectScrollHeight = 2950;
  final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      centerTitle: true,
    
      leading: Row(
        children: [
           MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: const NavBarItem(item: 'Home', fontSize: desktpNavBarTextFontSize,),
              onTap: () => context.go('/'),
            ),
          ),
        ],
      ),

      title: const MainTitle(fontSizeTitle: 48, fontSizeDescription: 20, titleColor: secondary, desColor: secondaryLight,),

      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const NavBarItem(item: 'Project', fontSize: desktpNavBarTextFontSize,),
                onTap: () => context.go('/developer_projects'),
              ),
            ),
          ],
        ),

        SizedBox(width: screenWidth < 1360 ? 16 : 32,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: const NavBarItem(item: 'Connect', fontSize: desktpNavBarTextFontSize,),
                onTap: () {
                  controller.animateTo(
                    // Connect
                    connectScrollHeight,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.decelerate
                  );
                },
              )
            ),
          ],
        ),

        SizedBox(width: screenWidth < 1360 ? 16 : 32,),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  controller.animateTo(
                    // About
                    aboutMeScrollHeight,
                    duration: const Duration(milliseconds: 1000), 
                    curve: Curves.decelerate
                  );
                },
                child: const NavBarItem(item: 'About Me', fontSize: desktpNavBarTextFontSize,)
              )
            ),
          ],
        ),
        SizedBox(width: screenWidth < 1360 ? 16 : 32,),
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