import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../../utilities/font_styles/font_style.dart';
import '../about_me/section_3.dart';

class SectionIntroduction extends StatelessWidget {
  final double headingMediumFontSize, headingSmallFontSize, contentFontSize;
  final List<String> introduction;
  final List<String>? objective;
  final Color secondaryColor;
  final String heroImagePath;
  const SectionIntroduction({super.key, required this.headingMediumFontSize, required this.headingSmallFontSize, required this.contentFontSize, required this.introduction, required this.objective, required this.secondaryColor, required this.heroImagePath});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double padValue = screenWidth < 1280 ? 128 : 400;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: ((screenWidth-padValue)/2)-10,
          child: objective != null ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Introduction', style: headingSmall(headingSmallFontSize)),
          
              const SizedBox(height: 8,),
          
              for(int index = 0; index < introduction.length; index++)
                buildBulletPoint(introduction[index], contentFontSize),
              
              const SizedBox(height: 24,),
          
              Text('Project Objective', style: headingSmall(headingSmallFontSize)),
          
              const SizedBox(height: 8,),
          
              for(int index = 0; index < objective!.length; index++)
                buildBulletPoint(objective![index], contentFontSize)
            ],
          ) : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Introduction', style: headingSmall(headingSmallFontSize)),
          
              const SizedBox(height: 8,),
          
              for(int index = 0; index < introduction.length; index++)
                buildBulletPoint(introduction[index], contentFontSize),
            ],
          )
        ),
        
        SmoothClipRRect(
          smoothness: 0.9,
            borderRadius: BorderRadius.circular(24),
            
            side: BorderSide(color: secondaryColor, width: 2),
          
          child: Image.asset(heroImagePath,width: ((screenWidth-padValue)/2)-10,)
        )
      ],
    );
  }
}


class SectionIntroductionSmall extends StatelessWidget {
  final double headingSmallFontSize, contentFontSize;
  final List<String> introduction;
  final List<String>? objective;
  final Color secondaryColor;
  final String heroImagePath;
  const SectionIntroductionSmall({super.key, required this.headingSmallFontSize, required this.contentFontSize, required this.introduction, required this.objective, required this.secondaryColor, required this.heroImagePath});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return objective != null ? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmoothClipRRect(
          smoothness: 0.9,
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(color: secondaryColor, width: 2),
          child: Image.asset(heroImagePath, width: screenWidth),
        ),

        const SizedBox(height: 24,),

        Text('Introduction', style: headingSmall(headingSmallFontSize)),
    
        const SizedBox(height: 8,),

        for(int index = 0; index < introduction.length; index++)
          buildBulletPoint(introduction[index], contentFontSize),

        const SizedBox(height: 24,),
          
        Text('Project Objective', style: headingSmall(headingSmallFontSize)),
    
        const SizedBox(height: 8,),
    
        for(int index = 0; index < objective!.length; index++)
          buildBulletPoint(objective![index], contentFontSize)
      ],
    ) :Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmoothClipRRect(
          smoothness: 0.9,
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(color: secondaryColor, width: 2),
          child: Image.asset(heroImagePath, width: screenWidth),
        ),

        const SizedBox(height: 24,),

        Text('Introduction', style: headingSmall(headingSmallFontSize)),
    
        const SizedBox(height: 8,),

        for(int index = 0; index < introduction.length; index++)
          buildBulletPoint(introduction[index], contentFontSize),
      ],
    );
  }
}