import 'package:smooth_corner/smooth_corner.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../buttons/fill_button.dart';

class TouchMyCard extends StatelessWidget {
  final double cardFontSize, cardDesFontSize, buttonFontSize;
  const TouchMyCard({super.key, required this.cardFontSize, required this.cardDesFontSize, required this.buttonFontSize});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double horizontalPadding = screenWidth < 700 ? screenWidth < 450 ? 0 : 64 : 120;
    final double position = screenWidth < 600 ? 16 : 24;
    final double cornerRadius = screenWidth < 600 ? 16 : 24;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Card Background
              AspectRatio(
                aspectRatio: 16/9,
                child: Container(
                  // width: 200,
    
                  decoration: ShapeDecoration(
                    color: secondary,
                    shadows: const [
                      BoxShadow(
                        color: Color(0x261F1F1F),
                        blurRadius: 0,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                      
                      BoxShadow(
                        color: Color(0x261F1F1F),
                        blurRadius: 15,
                        offset: Offset(0, 7),
                        spreadRadius: 0,
                      ),
                  
                      BoxShadow(
                      color: Color(0x211F1F1F),
                      blurRadius: 28,
                      offset: Offset(0, 28),
                      spreadRadius: 0,
                      ),
                  
                      BoxShadow(
                        color: Color(0x141F1F1F),
                        blurRadius: 38,
                        offset: Offset(0, 63),
                        spreadRadius: 0,
                      ),
                  
                      BoxShadow(
                        color: Color(0x051F1F1F),
                        blurRadius: 45,
                        offset: Offset(0, 112),
                        spreadRadius: 0,
                      ),
                  
                      BoxShadow(
                        color: Color(0x001F1F1F),
                        blurRadius: 49,
                        offset: Offset(0, 176),
                        spreadRadius: 0,
                      )
                    ], 
                    shape: SmoothRectangleBorder(
                        borderRadius: BorderRadius.circular(cornerRadius),
                        smoothness: 0.6,
                      ),
                  ),
                ),
              ),
          
              // Name and Description
              Positioned(
                top: position,
                left: position,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          
                    // Name
                    Text(
                      AboutMe().getName(), 
                      style: cardName(screenWidth < 1370 ? cardFontSize-4 :  cardFontSize),
                    ),
          
                    const SizedBox(height: 4,),
          
                    // Description
                    Text(
                      "Flutter Developer & UI Designer",
                      style: cardDescription(screenWidth < 1370 ? cardDesFontSize-4 :  cardDesFontSize),
                    ),
                
                    const SizedBox(height: 4,)
                  ],
                )
              ),
          
              // Contact Details
              Positioned(
                bottom: position,
                left: position,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    // Contact Details
                    Text(
                      "CONTACT DETAILS", 
                      style: cardDescription(screenWidth < 1370 ? cardDesFontSize-4 :  cardDesFontSize),
                    ),
          
                    const SizedBox(height: 8,),
          
                    // Email
                    Row(
                      children: [
                        SelectableText(
                          AboutMe().getEmail(), 
                          style: cardName(screenWidth < 1370 ? cardFontSize-4 :  cardFontSize),
                        ),
                      ],
                    ),
          
                    const SizedBox(height: 8,),
          
                    // Phone Number
                    SelectableText(
                      AboutMe().getPhone(), 
                      style: cardName(screenWidth < 1370 ? cardFontSize-4 :  cardFontSize),
                    ),
                  ],
                )
              ),
          
              Positioned(
                top: position,
                right: position,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Social", style: cardDescription(screenWidth < 1370 ? cardDesFontSize-4 :  cardDesFontSize)),
          
                    const SizedBox(height: 4,),
          
                    Column(
                      children: links.map((key) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth < 950 ? 0 : 4),
                          child: Link(
                            target: LinkTarget.blank,
                            uri: key.link,
                            builder: (context, followLink) => IconButton(
                              onPressed: followLink,
                              icon: FaIcon(
                                key.icon,
                                color: primary,
                                size: (screenWidth < 1370 ? 24 : 32),
                              )
                            )
                          )
                        )
                      ).toList()
                    )
                  ],
                )
              ),
            ]
          ),

          const SizedBox(height: 24),

          Link(
            target: LinkTarget.blank,
            uri: getResumeLink(),
            builder: (context, followLink) => ElevatedButton.icon(
              onPressed: followLink,
              icon: const Icon(Icons.link, size: 24, color: secondary),
              label: Text('My Resume', style: contentBold(buttonFontSize).copyWith(color: secondary)),
              style: secondaryButtonStyle(secondary)
            ),
          )
        ],
      ),
    );
  }
}