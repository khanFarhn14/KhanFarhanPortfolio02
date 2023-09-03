import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/font_styles/font_style.dart';

class CardHover extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final path, title;
  const CardHover({super.key, required this.path, required this.title});

  @override
  State<CardHover> createState() => _CardHoverState();
}

class _CardHoverState extends State<CardHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final boxWidth = (((MediaQuery.of(context).size.width)-400)/2)-10;
    final boxHeight = boxWidth - 230;

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
      },

      child: AnimatedCrossFade(
            crossFadeState: isHovered ? CrossFadeState.showSecond: CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 300),
            firstChild: Stack(
              alignment: Alignment.center,
              children: [
          
                SvgPicture.asset(widget.path, width: boxWidth,),

                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      width: boxWidth,
                      height: boxHeight,
                      decoration: BoxDecoration(
                        color: primaryDark.withOpacity(0.0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    )
                  ),
                ),
              ]
            ),
            
            secondChild: Stack(
              alignment: Alignment.center,
              children: [
          
                SvgPicture.asset(widget.path, width: boxWidth,),

                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      width: boxWidth,
                      height: boxHeight,
                      decoration: BoxDecoration(
                        color: primaryDark.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: AnimatedAlign(
                        alignment: isHovered ? Alignment.bottomCenter: Alignment.center,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.fastOutSlowIn,
                        child: Text(widget.title, style: headingLarge(desktpH1FontSize))
                      )
                    )
                  ),
                ),
              ]
            ),
          )
    );
  }
}