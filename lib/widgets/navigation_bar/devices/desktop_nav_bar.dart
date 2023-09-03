import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../utilities/font_styles/font_style.dart';
import '../nav_bar_items.dart';

class DesktopNavBar extends StatelessWidget {
  final Color backgroundColor;

  const DesktopNavBar({super.key, required this.backgroundColor,});

  @override
  Widget build(BuildContext context) {

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
      ],
    
      elevation: 0,

      toolbarHeight: 200,

      backgroundColor: Colors.transparent,

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