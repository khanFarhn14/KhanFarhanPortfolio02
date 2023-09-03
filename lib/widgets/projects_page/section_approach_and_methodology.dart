import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';
import '../../utilities/font_styles/font_style.dart';

class SectionApproachandMethodology extends StatelessWidget {
  final double fontMedium;
  const SectionApproachandMethodology({super.key, required this.fontMedium});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double imageWidth = screenWidth < 1280 ? 334 : 434;
    return Column(
      children: [
        Text('Approach and Methodology', style: screenWidth < 600 ? headingSmall(fontMedium) : headingMedium(fontMedium)),
        
        const SizedBox(height: 48,),

        Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.center,
          
          children: [
            Image.asset(getWWStep1(), width: imageWidth,),
            Image.asset(getWWStep2(), width: imageWidth),
            Image.asset(getWWStep3(), width: imageWidth),
          ],
        )
      ],
    );
  }
}

class SectionTexterApproachandMethodology extends StatelessWidget {
  const SectionTexterApproachandMethodology({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double padValue = screenWidth < 1280 ? 128 : 400;
    final double cardWidth = ((screenWidth-padValue)/2)-10;
    final double fontTitle = screenWidth < 1280 ? tabletH2FontSize : desktpH2FontSize;
    return screenWidth < 600 ? Column(
      children: [
        Text('Approach and Methodology', style: headingSmall(mobileH3FontSize)),

        const SizedBox(height: 24,),
        
        SvgPicture.asset(getTexterStep1Mobile(), width: screenWidth,),
        const SizedBox(height: 24,),

        SvgPicture.asset(getTexterStep2Mobile(), width: screenWidth,),
        const SizedBox(height: 24,),

        SvgPicture.asset(getTexterStep3Mobile(), width: screenWidth,),
        const SizedBox(height: 24,),
      ],
    ) : 
    Column(
      children: [
        Text('Approach and Methodology', style: headingMedium(fontTitle)),

        const SizedBox(height: 48),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(getTexterStep1(), width: cardWidth),
            SvgPicture.asset(getTexterStep2(), width: cardWidth)
          ],
        ),

        SvgPicture.asset(getTexterStep3(), width: screenWidth-20,)
      ],
    );
  }
}

class SectionIGApproachandMethodology extends StatelessWidget {
  const SectionIGApproachandMethodology({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double padValue = screenWidth < 1280 ? 128 : 400;
    final double decrementValue = screenWidth < 600 ? 100 : 300;
    return screenWidth < 850 ? Column(
      children: [
        SvgPicture.asset(getIGStep1(), width: screenWidth-decrementValue),
        const SizedBox(height: 24,),
        SvgPicture.asset(getIGStep2(), width: screenWidth-decrementValue)
      ],
    )
    : Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(getIGStep1(), width: ((screenWidth-padValue)/2)-10,),
        SvgPicture.asset(getIGStep2(), width: ((screenWidth-padValue)/2)-10,)
      ],
    );
  }
}

class SectionFSApproachandMethodology extends StatelessWidget {
  const SectionFSApproachandMethodology({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fontDes = screenWidth < 1280 ? screenWidth < 600 ? mobileDescrptnFontSize : tabletDescrptnFontSize : desktpDescrptnFontSize;
    final double padValue = screenWidth < 1280 ? screenWidth < 600 ? 48 : 128 : 400;
    final double containerWidth = screenWidth < 850 ? (screenWidth-padValue) : (screenWidth-padValue)/2;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      width: containerWidth,
      decoration: ShapeDecoration(
        shape: SmoothRectangleBorder(
          smoothness: 0.9,
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(color: fairShareSecondary, width: 2)
        )
      ),
      child: Column(
        children: [
          SvgPicture.asset(getProgrammingIllustration(), width: containerWidth-20,),
          const SizedBox(height: 12,),
          Text(getApproachContent(), style: description(fontDes), textAlign: TextAlign.center,),
        ],
      )
    );
  }
}