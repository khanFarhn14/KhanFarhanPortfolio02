import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../utilities/constants/constants.dart';

class Section1 extends StatelessWidget {
  final TextStyle aboutMeTxt, heroTxt, bio;
  final double startingHeight, contentHeight;
  const Section1({super.key, required this.aboutMeTxt, required this.heroTxt, required this.bio, required this.startingHeight, required this.contentHeight,});

  @override
  Widget build(BuildContext context) {
    final lineWidth = (((MediaQuery.of(context).size.width))/4)-50;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: lineWidth,
              height: 2,
              color: secondaryLight.withOpacity(0.5),
            ),
      
            SelectableText("About Me", style: aboutMeTxt),
      
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: lineWidth,
              height: 2,
              color: secondaryLight.withOpacity(0.5),
            ),
          ],
        ),
      
        SizedBox(
          height: startingHeight
        ),
        SelectableText(AboutMe().getHeroText(), style: heroTxt, textAlign: TextAlign.center,),
        SizedBox(
          height: contentHeight
        ),
        SelectableText(AboutMe().getBio(), style: bio, textAlign: TextAlign.center,)
      ],
    );
  }
}