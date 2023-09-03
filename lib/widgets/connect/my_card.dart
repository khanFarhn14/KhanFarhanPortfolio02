import 'package:smooth_corner/smooth_corner.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';
import '../copy_button.dart';

class MyCard extends StatelessWidget {
  final double cardFontSize, cardDesFontSize;
  const MyCard({super.key, required this.cardFontSize, required this.cardDesFontSize});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = screenWidth < 1280 ? (screenWidth / 3)+ 88 : screenWidth / 3;
    final double cardHeight = screenWidth < 1280 ? (screenWidth / 6) + 52 : screenWidth / 6;
    const double position = 32;
    return Stack(
      children: [
    
        // Card Background
        Container(
          width: cardWidth,
          height: cardHeight,
    
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
                borderRadius: BorderRadius.circular(24),
                smoothness: 0.6,
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
                  Text(
                    AboutMe().getEmail(), 
                    style: cardName(screenWidth < 1370 ? cardFontSize-4 :  cardFontSize),
                  ),
    
                  CopyButton(copyText: AboutMe().getEmail(),)
                ],
              ),
    
              const SizedBox(height: 8,),
    
              // Phone Number
              Row(
                children: [
    
                  Text(
                    AboutMe().getPhone(), 
                    style: cardName(screenWidth < 1370 ? cardFontSize-4 :  cardFontSize),
                  ),
    
                  CopyButton(copyText: AboutMe().getPhone(),)
                ],
              )
            ],
          )
        ),
    
        Positioned(
          bottom: position,
          right: position,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Social", style: cardDescription(cardDesFontSize)),
    
              const SizedBox(height: 4,),
    
              Row(
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
                          size: (screenWidth < 1370 ? 28 : 32),
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
    );
  }
}