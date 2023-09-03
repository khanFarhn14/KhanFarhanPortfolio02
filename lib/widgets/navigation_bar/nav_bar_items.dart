import 'package:flutter/material.dart';

import '../../utilities/font_styles/font_style.dart';

class NavBarItem extends StatefulWidget {
  final String item;
  final double fontSize;
  const NavBarItem({super.key, required this.item, required this.fontSize});

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: isHovered ? 0.5 : 1.0,
        child: Text(widget.item, style: navBarText(widget.fontSize)
        ),
      )
    );
  }
}