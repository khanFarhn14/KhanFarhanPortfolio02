import 'package:flutter/material.dart';

import '../../utilities/font_styles/font_style.dart';
import '../about_me/section_3.dart';

class SectionKeyFeatureandFunctionality extends StatelessWidget {
  final String keyFeature;
  final List<String> learnedLesson;
  const SectionKeyFeatureandFunctionality({super.key, required this.keyFeature, required this.learnedLesson});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fontTitle = screenWidth < 1280 ? tabletH2FontSize : desktpH2FontSize;
    final double fontContent = screenWidth < 1280 ? tabletcontentFontSize : desktpcontentFontSize;
    final double padValue = screenWidth < 1280 ? 128 : 400;
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: ((screenWidth-padValue)/2)-20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Key features & functionality', style: headingMedium(fontTitle)),

              const SizedBox(height: 48),

              Text(keyFeature, style: content(fontContent)),
            ],
          ),
        ),

        SizedBox(
          width: ((screenWidth-padValue)/2)-20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Learned Lesson', style: headingMedium(fontTitle)),

              const SizedBox(height: 48),

              for(int i = 0; i < learnedLesson.length; i++)
                buildBulletPoint(learnedLesson[i], fontContent)
            ],
          ),
        )
      ],
    );
  }
}


class SectionKeyFeatureandFunctionalitySmall extends StatelessWidget {
  final String keyFeature;
  final List<String> learnedLesson;
  const SectionKeyFeatureandFunctionalitySmall({super.key, required this.keyFeature, required this.learnedLesson});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Key features & functionality', style: headingSmall(mobileH3FontSize)),

        const SizedBox(height: 12),

        Text(keyFeature, style: content(mobilecontentFontSize)),

        const SizedBox(height: 48,),

        Text('Learned Lesson', style: headingMedium(mobileH3FontSize)),

        const SizedBox(height: 12),

        for(int i = 0; i < learnedLesson.length; i++)
          buildBulletPoint(learnedLesson[i], mobilecontentFontSize)
      ],
    );
  }
}